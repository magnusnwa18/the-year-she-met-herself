# Production Plan & Tracker — The Year She Met Herself
### project-manager · honest arithmetic, updated every pass.

**Targets:** 13 chapters · word floor **12,000**/chapter · total target **~170,000** (band 150k–200k).
**Branch:** `claude/relaxed-mayer-TIm1Z` · **Scene marker:** `◆` · **Policy:** every chapter ≥ floor; grow via the four B-plots, never padding.
**Drafting mode:** **compressed** (`compress-fiction` codec, ~20× fewer output tokens) → `chapters-long/chNN-compressed.md`. Expanded outside this env via `compress-fiction/expand-prompt.md`. One sample chapter (ch1) expanded in-repo (`chapters/`) as the quality gate.

> **Word counts below are EXPANDED-prose targets.** Compressed source files are ~1/20th the tokens; the floor/target refers to the decoded English wordcount.

## Live tracker
| Chapter | Title | Floor | Drafted (expanded est.) | % | Status |
|--------:|-------|------:|------------------------:|--:|--------|
| 1 | The Good Daughter | 12,000 | ~11,990 | 100% | **Drafted (1st pass)** — expanded reference at `chapters/01-the-good-daughter.md`; codec demo at `chapters-long/ch01-compressed.md` |
| 2 | Aftershocks | 12,000 | ~12,000 (exp.) | 100% | **Drafted (1st pass)** — compressed-only at `chapters-long/ch02-compressed.md`; first person; ~11.1k real compressed prose → ≈12k expanded |
| 3 | The London One | 12,000 | ~12,000 (exp.) | 100% | **Drafted (1st pass)** — compressed-only; ~10.7k real compressed prose → ≈12k expanded; 5 scenes |
| 4 | What the House Remembers | 12,000 | 0 | 0% | Not started |
| 5 | Theo | 12,000 | 0 | 0% | Not started |
| 6 | Who Gets to Be Me | 12,000 | 0 | 0% | Not started |
| 7 | The Child | 12,000 | 0 | 0% | Not started |
| 8 | Value Engineering | 12,000 | 0 | 0% | Not started |
| 9 | The Father | 12,000 | 0 | 0% | Not started |
| 10 | The Long Night | 12,000 | 0 | 0% | Not started |
| 11 | What Her Mother Forgot | 12,000 | 0 | 0% | Not started |
| 12 | The Choice | 12,000 | 0 | 0% | Not started |
| 13 | The Year She Met Herself | 12,000 | 0 | 0% | Not started |
| **Σ** | | **156,000** | **~36,000** | **~23%** | Ch1–3 drafted (3 of 13) |

## Pace & projection
- **Realistic cadence:** one chapter per drafting pass, in the compression codec; commit + push after each (Law 7). The codec is what makes a 150k-word book feasible inside a token-bounded session — Claude composes full literary quality but spells it compressed (~20× output saving); a cheap decoder expands it later.
- **Whole book ≈ 13 passes.** This session aims to complete Phases 0–3 and as many drafting passes as the context allows, committing each so the repo is always resumable. Remaining chapters continue in later passes — pick up from the tracker.
- **Quality gate:** run the per-scene gate while drafting and the per-chapter gate at each chapter's end (`framework/QUALITY-CHECKLIST.md`), on the *expanded* prose for any compressed chapter. Ch1 is expanded in-repo as the reference.

## Stage
**Drafting** ← current. (Phases 0–3 complete: spec locked, outline locked, bible built, plan live.) Revising / Polishing = later (Phase 5), only once the draft is whole.

## Voice note (author direction, from Ch2 on)
- **First person**, heavy interior thinking. Visions = first person present, but **the "I" becomes the alternate self** (the pronoun is colonised). **Compressed-only** drafting (no expanded files). Richer/more sophisticated; new recurring characters welcome.
- **Ch1 owes a first-person revision pass** (Phase 5) to match this lock — flagged.

## Next action
Draft **Chapter 4 — "What the House Remembers"** (Days 47–72): the cottage at Pill; the origin of the wound (Fork A, age 26); Diana's decline deepens & the **Daniel** mystery presses; the Freedom door & the father, named for the first time. Compressed-only → `chapters-long/ch04-compressed.md`. Advance B3. Floor ≥12k.

### Pass log
- **Pass 1:** Phases 0–3 (spec/outline/bible/plan) locked + committed.
- **Pass 2:** Ch1 "The Good Daughter" drafted to floor (~11,990w, expanded readable reference). Per-chapter gate: PASS. Committed + pushed.
- **Pass 4:** Ch3 "The London One" drafted compressed-only to floor (~10.7k real compressed prose ≈ 12k expanded; 5 scenes). Full Ellis/career life rendered (studio, awards, Christmas visit to Diana, the unbreached barrister-love); **Julian Vane** + the competition introduced; takeover escalates to waking-world action (drafted entry in lost time; nosebleed cost; Ellis feeds on *not choosing*). **Daniel** mystery seeded (Diana: "before I was sensible"). B2 advanced (Cora's naked moment, Rhiannon/Faisal). Per-chapter gate: PASS. Committed + pushed.
- **Pass 3:** Voice switched to **first person** (spec + bible updated). Ch2 "Aftershocks" drafted **compressed-only** to floor (~11.1k real compressed prose ≈ 12k expanded; 6 scenes). New character **Viv Ashe** introduced; intrigue seeds planted (cottage deeds, the photograph, the rules notebook); takeover mechanism named + escalated (lost-time text, Ellis in waking glass). B1 (Priya/Dev/Manchester) + B2 (Greenbank/Cora + the London competition email) advanced. Per-chapter gate: PASS (job done; escalation = both doors now real in the waking world + Ellis leaking through; opens on the unprecedented non-yes, ends on "Is Eleanor Hale there?"; floor met via woven B1/B3/new scene, not padding; bible updated). Committed + pushed.
