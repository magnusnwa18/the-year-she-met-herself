# Production Plan & Tracker — The Year She Met Herself
### project-manager · honest arithmetic, updated every pass.

**Targets:** 13 chapters · word floor **12,000**/chapter · total target **~170,000** (band 150k–200k).
**Branch:** `claude/relaxed-mayer-TIm1Z` · **Scene marker:** `◆` · **Policy:** every chapter ≥ floor; grow via the four B-plots, never padding.
**Drafting mode:** **compressed** (`compress-fiction` codec, ~20× fewer output tokens) → `chapters-long/chNN-compressed.md`. Expanded outside this env via `compress-fiction/expand-prompt.md`. One sample chapter (ch1) expanded in-repo (`chapters/`) as the quality gate.

> **Word counts below are EXPANDED-prose targets.** Compressed source files are ~1/20th the tokens; the floor/target refers to the decoded English wordcount.

## Live tracker
| Chapter | Title | Floor | Drafted (expanded est.) | % | Status |
|--------:|-------|------:|------------------------:|--:|--------|
| 1 | The Good Daughter | 12,000 | 0 | 0% | Not started |
| 2 | Aftershocks | 12,000 | 0 | 0% | Not started |
| 3 | The London One | 12,000 | 0 | 0% | Not started |
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
| **Σ** | | **156,000** | **0** | **0%** | Planning complete (Phases 0–3) |

## Pace & projection
- **Realistic cadence:** one chapter per drafting pass, in the compression codec; commit + push after each (Law 7). The codec is what makes a 150k-word book feasible inside a token-bounded session — Claude composes full literary quality but spells it compressed (~20× output saving); a cheap decoder expands it later.
- **Whole book ≈ 13 passes.** This session aims to complete Phases 0–3 and as many drafting passes as the context allows, committing each so the repo is always resumable. Remaining chapters continue in later passes — pick up from the tracker.
- **Quality gate:** run the per-scene gate while drafting and the per-chapter gate at each chapter's end (`framework/QUALITY-CHECKLIST.md`), on the *expanded* prose for any compressed chapter. Ch1 is expanded in-repo as the reference.

## Stage
**Drafting** ← current. (Phases 0–3 complete: spec locked, outline locked, bible built, plan live.) Revising / Polishing = later (Phase 5), only once the draft is whole.

## Next action
Draft **Chapter 1 — "The Good Daughter"** in the codec → `chapters-long/ch01-compressed.md`; expand to `chapters/01-the-good-daughter.md` as the quality reference; run the per-chapter gate; update this tracker; commit + push.
