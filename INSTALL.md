# The Novel Engine — portable bundle

This bundle contains the reusable novel-production framework + the craft skills,
extracted from the *Midnight in Manchester* project. Drop it into any repo to build
a new book of the same quality.

## Install into a repo (e.g. the-year-she-met-herself)
From the ROOT of the target repo:

```bash
tar xzf the-novel-engine.tgz          # adds framework/ and .claude/skills/
./install.sh                          # (optional) verifies + prints next steps
git add framework .claude && git commit -m "Add The Novel Engine (framework + skills)"
git push
```

## Then start the book
```bash
cp framework/templates/book.config.template book.config   # set TITLE, CHAPTER_COUNT, WORD_FLOOR, COMPRESS_DRAFT, BRANCH
./framework/scaffold.sh . book.config                     # scaffolds docs, chapter stubs, project CLAUDE.md
cp framework/STORY-SPEC.template.md STORY-SPEC.md          # then FILL IT IN (Phase 0)
```
Work `framework/METHOD.md` phase by phase; gate every chapter with `framework/QUALITY-CHECKLIST.md`.

## Skills included (.claude/skills/)
structure-storyteller · prose-craftsman · continuity-keeper · project-manager ·
revision-partner · motivation-coach · research-integrator · **compress-fiction** (optional ~20x token-saving drafting codec).

## Token-saving drafting
Set `COMPRESS_DRAFT=true` in book.config (or in the project CLAUDE.md). Claude then drafts
chapters in the compress-fiction codec → `chapters-long/chNN-compressed.md`; expand them
cheaply outside the session with a decoder model using `.claude/skills/compress-fiction/expand-prompt.md`.
