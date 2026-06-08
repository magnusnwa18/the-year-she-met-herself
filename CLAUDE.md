# CLAUDE.md — *The Year She Met Herself*

> Read first, every session. This is a **adult literary / upmarket book-club fiction** novel built with The Novel Engine (`framework/`).

## Use these skills (mandatory)
The craft skills live in `.claude/skills/`. Load the relevant one for each task:
structure-storyteller (architecture), prose-craftsman (line voice), continuity-keeper
(`STORY-BIBLE.md` = source of truth), project-manager (`PRODUCTION-PLAN.md` = tracker),
revision-partner (stage/process), motivation-coach (unblocking), research-integrator (accuracy).

## Drafting mode
- **Compressed drafting:** true. When `true`, draft chapters with the **compress-fiction** skill (~20x fewer output tokens) → `chapters-long/chNN-compressed.md`, then expand outside this env with `compress-fiction/expand-prompt.md`. When `false`, draft normal prose. (See `framework/METHOD.md` Phase 4.)

## The framework
- **`framework/METHOD.md`** — the build pipeline (Phase 0 spec → 5 revise) + the non-negotiable Laws.
- **`framework/QUALITY-CHECKLIST.md`** — the per-scene / per-chapter / book gates.
- **`STORY-SPEC.md`** — the knobs. Fill this in FIRST (Phase 0).

## Production policy
- 13 chapters · **every chapter ≥ 12000 words** · total ~175000.
- Reach length via **woven B-plots, never padding** (Law 4).
- Scenes marked `◆`, each tagged with POV.
- Develop on branch **claude/relaxed-mayer-TIm1Z**; commit + push after every pass (Law 7).

## Current next action
Phase 0 — fill in `STORY-SPEC.md` completely, then follow `framework/METHOD.md`.
