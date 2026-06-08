# The Novel Engine
### A reproducible framework for building a full-length, high-quality novel from a single spec

This folder turns the way *Midnight in Manchester* was written into a **repeatable production system.** Change the inputs, run the method, get a book of the same quality. The story is configurable; the craft is not.

---

## The idea in one paragraph

Quality fiction at length is not magic — it's a **spec** (who/what/why, the theme-as-argument, the voice, the motifs), an **architecture** (chapters that each do a job, escalating via cause→effect), a **continuity ledger** (so nothing drifts), and a **production discipline** (scene-by-scene, no padding, commit every pass, a quality gate per chapter). The craft skills in `.claude/skills/` are the *engine* — seven for quality (structure-storyteller, prose-craftsman, continuity-keeper, project-manager, revision-partner, motivation-coach, research-integrator) plus an optional **compress-fiction** codec for drafting at ~20x fewer output tokens. This framework is the *chassis and the assembly line* that drives them the same way every time.

---

## The five files you actually touch

| File | What it is | You edit it? |
|------|-----------|--------------|
| **`STORY-SPEC.template.md`** | The **knobs.** Every input that varies between stories: premise, theme, voice, characters (want/need/wound/lie), setting, motifs, B-plots, production targets. | ✅ Copy → fill in |
| **`STORY-SPEC.example.md`** | The knobs filled in for *Midnight in Manchester*, as a worked reference. | Read for reference |
| **`METHOD.md`** | The **pipeline.** Phase-by-phase: spec → architecture → bible → plan → draft → revise. Plus the *non-negotiable rules* that protect quality. | Follow |
| **`QUALITY-CHECKLIST.md`** | The **gate.** A per-scene and per-chapter rubric. Nothing ships until it passes. | Run each chapter |
| **`templates/`** | Skeletons for the artifacts the method generates (`OUTLINE`, `STORY-BIBLE`, `PRODUCTION-PLAN`, `CHAPTER`, `book.config`). | Auto-filled |

---

## How to start a new book (two ways)

### A. Scaffold script (fast)
```bash
# 1. Copy the config and fill in the basics
cp framework/templates/book.config.template my-book.config
$EDITOR my-book.config        # set TITLE, CHAPTER_COUNT, WORD_FLOOR, BRANCH, etc.

# 2. Scaffold a fresh project skeleton (dirs, skills, stub chapters, docs)
./framework/scaffold.sh ../my-new-book my-book.config

# 3. Fill in the creative spec, then run the method
cp framework/STORY-SPEC.template.md ../my-new-book/STORY-SPEC.md
$EDITOR ../my-new-book/STORY-SPEC.md
```

### B. By hand (in this repo or a new one)
1. Copy `STORY-SPEC.template.md` → `STORY-SPEC.md` and fill every field.
2. Open `METHOD.md` and work the phases in order.
3. Gate every chapter with `QUALITY-CHECKLIST.md`.

Either way: **the skills in `.claude/skills/` load automatically**, and the method tells Claude exactly when to use each one.

---

## Why this reproduces *quality*, not just *output*

The framework hard-codes the four things that separate a real novel from generated filler:

1. **Theme-as-argument** — every story is built around an arguable claim the plot *tests* (not a topic). This is what makes scenes mean something.
2. **Characters with a want/need/wound/lie** — so arcs actually move and behaviour is motivated.
3. **A motif system seeded early and paid off late** — what makes a book feel *composed* rather than assembled.
4. **The no-padding law + the quality gate** — length is reached by *story* (woven B-plots), and nothing advances until it passes the rubric.

Swap the premise, the characters, the city, the genre — keep those four, run the method, and the output holds.

---

## What stays the same vs. what changes

- **Changes (the spec):** premise, genre, characters, setting, tone, motifs, plot, B-plots, length.
- **Stays (the engine):** the phase pipeline, the scene-unit discipline, the continuity ledger, the voice-consistency rule, the motif seed/payoff system, the no-padding law, the per-chapter quality gate, the commit-every-pass cadence.

Read `METHOD.md` next.
