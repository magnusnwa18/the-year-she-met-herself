#!/usr/bin/env bash
set -e
[ -d framework ] && [ -d .claude/skills ] && echo "✓ framework/ and .claude/skills/ present" || { echo "✗ extract the tgz at repo root first"; exit 1; }
chmod +x framework/scaffold.sh 2>/dev/null || true
echo "Skills:"; ls .claude/skills
echo
echo "Next: cp framework/templates/book.config.template book.config  (edit it)"
echo "      ./framework/scaffold.sh . book.config"
echo "      cp framework/STORY-SPEC.template.md STORY-SPEC.md  (fill in — Phase 0)"
echo "      follow framework/METHOD.md ; gate with framework/QUALITY-CHECKLIST.md"
