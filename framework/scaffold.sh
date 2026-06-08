#!/usr/bin/env bash
# scaffold.sh — create a fresh, ready-to-build novel project from a config.
#
# Usage:
#   ./framework/scaffold.sh <target-dir> [config-file]
#
# If no config file is given, framework/templates/book.config.template is used
# (you'll want to copy + edit it first). The script scaffolds the project
# skeleton: dirs, the seven craft skills, the framework, filled doc templates,
# chapter stubs, and a CLAUDE.md — everything the METHOD needs to start drafting.

set -euo pipefail

# --- locate framework dir (this script's dir) ---
FRAMEWORK_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$FRAMEWORK_DIR/.." && pwd)"
TPL="$FRAMEWORK_DIR/templates"

# --- args ---
TARGET="${1:-}"
CONFIG="${2:-$TPL/book.config.template}"
if [[ -z "$TARGET" ]]; then
  echo "Usage: $0 <target-dir> [config-file]" >&2
  exit 1
fi
if [[ ! -f "$CONFIG" ]]; then
  echo "Config not found: $CONFIG" >&2
  exit 1
fi

# --- defaults, then load config (KEY=VALUE bash) ---
TITLE="Untitled"; AUTHOR="Author"; GENRE="fiction"
CHAPTER_COUNT=5; WORD_FLOOR=15000; TOTAL_TARGET=90000
SCENE_MARK="◆"; BRANCH="main"; SLUG=""
# shellcheck disable=SC1090
source "$CONFIG"
[[ -z "$SLUG" ]] && SLUG="$(echo "$TITLE" | tr '[:upper:] ' '[:lower:]-' | tr -cd 'a-z0-9-')"

echo "Scaffolding '$TITLE' → $TARGET"
echo "  chapters=$CHAPTER_COUNT  floor=$WORD_FLOOR  total=$TOTAL_TARGET  branch=$BRANCH"

# --- substitution helper (handles guillemet placeholders) ---
fill() { # fill <src> <dest>
  sed -e "s|«TITLE»|$TITLE|g" \
      -e "s|«AUTHOR»|$AUTHOR|g" \
      -e "s|«GENRE»|$GENRE|g" \
      -e "s|«CHAPTER_COUNT»|$CHAPTER_COUNT|g" \
      -e "s|«WORD_FLOOR»|$WORD_FLOOR|g" \
      -e "s|«TOTAL_TARGET»|$TOTAL_TARGET|g" \
      -e "s|«SCENE_MARK»|$SCENE_MARK|g" \
      -e "s|«BRANCH»|$BRANCH|g" \
      "$1" > "$2"
}

# --- build structure ---
mkdir -p "$TARGET/chapters-long" "$TARGET/chapters"
# carry the engine + framework so the new project is self-contained
cp -R "$REPO_DIR/.claude" "$TARGET/.claude" 2>/dev/null || mkdir -p "$TARGET/.claude/skills"
[[ -d "$REPO_DIR/.claude/skills" ]] || echo "  (warning: no .claude/skills found to copy)"
cp -R "$FRAMEWORK_DIR" "$TARGET/framework"

# --- docs from templates ---
fill "$TPL/OUTLINE.template.md"          "$TARGET/OUTLINE.md"
fill "$TPL/STORY-BIBLE.template.md"      "$TARGET/STORY-BIBLE.md"
fill "$TPL/PRODUCTION-PLAN.template.md"  "$TARGET/PRODUCTION-PLAN.md"
cp   "$FRAMEWORK_DIR/STORY-SPEC.template.md" "$TARGET/STORY-SPEC.md"

# --- chapter stubs ---
for n in $(seq 1 "$CHAPTER_COUNT"); do
  nn=$(printf "%02d" "$n")
  out="$TARGET/chapters-long/${nn}-chapter-${n}.md"
  sed -e "s|«N»|$n|g" \
      -e "s|«N+1»|$((n+1))|g" \
      -e "s|«TITLE»|Chapter $n|g" \
      -e "s|«WORD_FLOOR»|$WORD_FLOOR|g" \
      -e "s|«SCENE_MARK»|$SCENE_MARK|g" \
      "$TPL/CHAPTER.template.md" > "$out"
done

# --- project CLAUDE.md ---
cat > "$TARGET/CLAUDE.md" <<EOF
# CLAUDE.md — *$TITLE*

> Read first, every session. This is a **$GENRE** novel built with The Novel Engine (\`framework/\`).

## Use these skills (mandatory)
The craft skills live in \`.claude/skills/\`. Load the relevant one for each task:
structure-storyteller (architecture), prose-craftsman (line voice), continuity-keeper
(\`STORY-BIBLE.md\` = source of truth), project-manager (\`PRODUCTION-PLAN.md\` = tracker),
revision-partner (stage/process), motivation-coach (unblocking), research-integrator (accuracy).

## Drafting mode
- **Compressed drafting:** ${COMPRESS_DRAFT:-false}. When \`true\`, draft chapters with the **compress-fiction** skill (~20x fewer output tokens) → \`chapters-long/chNN-compressed.md\`, then expand outside this env with \`compress-fiction/expand-prompt.md\`. When \`false\`, draft normal prose. (See \`framework/METHOD.md\` Phase 4.)

## The framework
- **\`framework/METHOD.md\`** — the build pipeline (Phase 0 spec → 5 revise) + the non-negotiable Laws.
- **\`framework/QUALITY-CHECKLIST.md\`** — the per-scene / per-chapter / book gates.
- **\`STORY-SPEC.md\`** — the knobs. Fill this in FIRST (Phase 0).

## Production policy
- $CHAPTER_COUNT chapters · **every chapter ≥ $WORD_FLOOR words** · total ~$TOTAL_TARGET.
- Reach length via **woven B-plots, never padding** (Law 4).
- Scenes marked \`$SCENE_MARK\`, each tagged with POV.
- Develop on branch **$BRANCH**; commit + push after every pass (Law 7).

## Current next action
Phase 0 — fill in \`STORY-SPEC.md\` completely, then follow \`framework/METHOD.md\`.
EOF

# --- optional git branch ---
if command -v git >/dev/null 2>&1 && [[ "$BRANCH" != "main" ]]; then
  ( cd "$TARGET" && git rev-parse --is-inside-work-tree >/dev/null 2>&1 && \
    git checkout -b "$BRANCH" 2>/dev/null || true )
fi

echo "Done."
echo
echo "Next steps:"
echo "  1. cd $TARGET"
echo "  2. Fill in STORY-SPEC.md  (Phase 0 — the knobs)"
echo "  3. Work framework/METHOD.md phase by phase; gate with framework/QUALITY-CHECKLIST.md"
echo "  4. Draft into chapters-long/ ; commit + push every pass"
