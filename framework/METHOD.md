# METHOD — The Build Pipeline
### How to turn a filled `STORY-SPEC.md` into a finished, high-quality novel. Same process every time.

This is the assembly line. The seven skills in `.claude/skills/` are the tools; this document is the order of operations and the rules that protect quality. **Work the phases in sequence.** Don't draft before the spec is locked; don't line-polish a scene that might get cut.

---

## PHASE 0 — SPEC  *(skill: structure-storyteller, research-integrator)*
Fill `STORY-SPEC.md` completely. This is 80% of quality. A precise spec makes everything downstream easy; a vague one makes it impossible.
**Output:** a completed spec. **Gate:** the sign-off checklist at the bottom of the spec.

## PHASE 1 — ARCHITECTURE  *(skill: structure-storyteller)*
Pressure-test and lock the structure before any prose.
- Trace the plot as **because → therefore → but**, never "and then." Where it goes slack, fix the spec.
- Confirm each chapter has a **job** and ties to a character's **want + obstacle.** Cut any beat that exists only for mechanics.
- Map the **escalation**: stakes must rise; the midpoint must do real work; the "catch" must close like a trap.
- Confirm the **theme is dramatized, not stated**, in each movement.
**Output:** `OUTLINE.md` (from template) — logline, characters, chapter map, themes, motifs. **Gate:** every chapter beat is causal and theme-bearing.

## PHASE 2 — BIBLE  *(skill: continuity-keeper)*
Build the canonical ledger from the spec. This is the source of truth for the whole build.
- Characters (names/spelling, ages, physical anchors, voice, relationships, **what they know and when**).
- Places, geography, travel times, timeline.
- **Information-state ledger** — the who-knows-what-when table. This is the most-missed continuity error in fiction; track it explicitly.
- Motif seed/payoff table. Object & thread setups awaiting payoff.
**Output:** `STORY-BIBLE.md` (from template). **Gate:** every secret has an owner and a reveal; the timeline has no contradictions.

## PHASE 3 — PLAN  *(skill: project-manager)*
- Set the word **floor per chapter** and the total target.
- Build the live **tracker**: chapter → target → drafted → status.
- State the pace honestly and the commit/push cadence.
**Output:** `PRODUCTION-PLAN.md` (from template). **Gate:** the plan is realistic and the tracker exists.

## PHASE 4 — DRAFT  *(skills: prose-craftsman lead; structure + continuity in support; motivation-coach if stuck)*
Draft **front to back, chapter by chapter, scene by scene.** Protect momentum; keep a "fix later" list instead of polishing mid-draft.
- **The scene is the unit.** Mark each `◆` with its POV. Write to the scene's job.
- After each pass: **update the tracker, commit, and push.** Progress must be visible and never lost.
- Reach the word floor by **adding story (B-plots), never padding** (see Law 4).
- Check each scene against the **per-scene gate** in `QUALITY-CHECKLIST.md` as you go.

> **Optional token-saving mode — compressed drafting (skill: `compress-fiction`).** When output tokens matter, draft each chapter in the compression codec (~20x fewer output tokens): full literary quality, spelled compressed, with structural IR headers. Save as `chapters-long/chNN-compressed.md`, then expand cheaply outside this environment with a decoder model (`compress-fiction/expand-prompt.md`). **Trade-off:** compressed drafts aren't human-legible in place and can't be line-edited until expanded — use it for bulk output you'll expand elsewhere, and draft uncompressed when a chapter needs in-session reading/revision. A project turns this on by stating it in its `CLAUDE.md`.

**Output:** `chapters-long/NN-title.md` (or `chNN-compressed.md`), each ≥ floor. **Gate:** the per-chapter checklist (run it on the *expanded* prose if compressing).

## PHASE 5 — REVISE  *(skill: revision-partner orchestrates; structure → prose → continuity, in that order)*
Only after the draft is whole. **Structural revision first** (does it work?), **then** line revision (does it sing?), **then** the polish/error sweep. Never line-edit a scene that might get cut. One focus per pass; capture other issues for later passes.
**Output:** a revised manuscript. **Gate:** the full `QUALITY-CHECKLIST.md` at book level.

---

## THE NON-NEGOTIABLE LAWS  *(these are what make it reproduce quality)*

**Law 1 — Voice is sacred.** Lock the voice in the spec (with calibration lines) and match it every line. Sharpen the established voice; never replace it with generic competence. When expanding or rewriting, the result sounds like the author *on a good day.*

**Law 2 — Every scene earns its place.** A scene must do at least two of: advance plot, advance a subplot, deepen character (new interiority), or build essential texture — AND it must move on a **want vs. obstacle** and **rhyme with the theme-argument.** If it does none, cut it.

**Law 3 — Causality, not chronology.** Scenes connect by because/therefore/but. The moment you can only say "and then," you've found dead weight.

**Law 4 — No padding; reach length through story.** If a chapter is short of its floor, add **scenes that advance a B-plot and rhyme with the theme** — never filler, never inflated prose. Length is a *consequence* of sufficient story, not a quota you bloat toward.

**Law 5 — Motifs are seeded early and paid off late.** Plant deliberately; recur with variation; resolve at the climax/epilogue. Track every one in the bible. This is what makes a book feel composed.

**Law 6 — Continuity is checked against the bible, always.** Never let a character act on knowledge before they learn it. Update the bible the instant canon changes; flag any retcon as a deliberate choice.

**Law 7 — Commit every pass.** After each drafting/revision pass: update the tracker, commit with a clear message, push to the working branch. The repo is always in a resumable state.

**Law 8 — Honest reporting.** State word counts, pace, and what's unfinished plainly. A chapter under floor is "under floor," not "done." Tell the truth about the work.

---

## THE QUALITY ENGINE (which skill, when)

| Phase / need | Skill |
|---|---|
| Premise, structure, arcs, pacing, plot-holes, theme | **structure-storyteller** |
| Line-level voice, rhythm, dialogue, cutting flab | **prose-craftsman** |
| The canonical ledger, who-knows-what-when | **continuity-keeper** |
| Targets, tracker, pace, chapter breakdown | **project-manager** |
| Working across sessions; stage-aware revision | **revision-partner** |
| Stuck, blocked, lost momentum | **motivation-coach** |
| Authentic setting / factual accuracy | **research-integrator** |
| Drafting at ~20x fewer output tokens (optional) | **compress-fiction** |

---

## THE LOOP (per chapter, in practice)
1. Re-read the chapter's **job** in `OUTLINE.md` and the relevant **bible** entries.
2. Draft scene by scene (`◆` + POV), to the job, in the locked voice.
3. Run the **per-scene gate** as you write.
4. At chapter end: run the **per-chapter gate**; if under floor, add a B-plot scene (Law 4).
5. Update tracker → commit → push (Law 7).
6. Move to the next chapter. Don't polish yet (that's Phase 5).

That's the whole machine. Swap the spec, run the loop, get a book.
