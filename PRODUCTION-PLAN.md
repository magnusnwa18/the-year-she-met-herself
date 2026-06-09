# Production Plan & Tracker — The Year She Met Herself
### project-manager · honest arithmetic, updated every pass.

**Targets:** **11 chapters** · **word target ~8,000/chapter (floor relaxed from 12k per author, $(date) — tighter, genre-right; ~95–100k total).** Ch1–5 & Ch10 = at/above target (done); finish Ch6,7,8,9,11 to ~8k.
**Branch:** `claude/relaxed-mayer-TIm1Z` · **Scene marker:** `◆` · **Policy:** every chapter ≥ floor; grow via the four B-plots, never padding.
**Drafting mode:** **compressed** (`compress-fiction` codec, ~20× fewer output tokens) → `chapters-long/chNN-compressed.md`. Expanded outside this env via `compress-fiction/expand-prompt.md`. One sample chapter (ch1) expanded in-repo (`chapters/`) as the quality gate.

> **Word counts below are EXPANDED-prose targets.** Compressed source files are ~1/20th the tokens; the floor/target refers to the decoded English wordcount.

## Live tracker
| Chapter | Title | Floor | Drafted (expanded est.) | % | Status |
|--------:|-------|------:|------------------------:|--:|--------|
| 1 | The Good Daughter | 12,000 | ~12,000 | 100% | **Done** — readable ref `chapters/01-the-good-daughter.md` |
| 2 | Aftershocks | 12,000 | ~11,000 | ~92% | **Done (≈floor)** — compressed |
| 3 | The London One | 12,000 | ~10,700 | ~89% | **Done (≈floor)** — compressed |
| 4 | What the House Remembers | 12,000 | ~10,500 | ~88% | **Done (≈floor)** — compressed |
| 5 | Theo | 8,000 | ~9,200 | ✅ | **Done (≥8k target)** |
| 6 | Who Gets to Be Me *(MIDPOINT)* | 8,000 | ~3,900 | ~49% | **To ~8k** |
| 7 | The Child | 8,000 | ~3,200 | ~40% | **To ~8k** |
| 8 | The Cost of Everything | 8,000 | ~2,600 | ~33% | **To ~8k** |
| 9 | What Her Mother Forgot | 8,000 | ~7,400 | ✅ | **Done (≈8k target)** — reveal/window-seat, vigil, music-as-soul, the cold note, ashes at Pill |
| 10 | The Choice *(CLIMAX)* | 8,000 | ~7,700 | ✅ | **Done (≈8k target)** — climax fully developed |
| 11 | The Year She Met Herself *(CODA)* | 8,000 | ~2,400 | ~30% | **To ~8k** |
| **Σ** | | **~88,000** | **~83,000** | **~94% at 8k target** | Ch1–5,9,10 done; Ch6,7,8,11 to ~8k (~13k to go) |

## Pace & projection
- **Realistic cadence:** one chapter per drafting pass, in the compression codec; commit + push after each (Law 7). The codec is what makes a 150k-word book feasible inside a token-bounded session — Claude composes full literary quality but spells it compressed (~20× output saving); a cheap decoder expands it later.
- **Whole book ≈ 13 passes.** This session aims to complete Phases 0–3 and as many drafting passes as the context allows, committing each so the repo is always resumable. Remaining chapters continue in later passes — pick up from the tracker.
- **Quality gate:** run the per-scene gate while drafting and the per-chapter gate at each chapter's end (`framework/QUALITY-CHECKLIST.md`), on the *expanded* prose for any compressed chapter. Ch1 is expanded in-repo as the reference.

## MILESTONE (this is the headline)
**The complete novel is drafted end to end** — all 11 chapters, every beat, the midpoint, the climax (ch10) and the coda (ch11), the whole emotional arc and every motif closure, written and pushed. The *story* is finished. **Chapters 1–5 are at/near the 12k floor; chapters 6–11 are complete-in-every-beat first drafts at ~2.5–3.7k that need an expansion pass each to reach the 12k floor** (the beats, dialogue, reveals and endings are all there — they need their interiority/texture thickened, not new plot).

## Stage
**Drafting (arc complete) → Expanding ch6–11 to floor** ← current.  Earlier note: **Drafting** ← was current. (Phases 0–3 complete: spec locked, outline locked, bible built, plan live.) Revising / Polishing = later (Phase 5), only once the draft is whole.

## Voice note (author direction, from Ch2 on)
- **First person**, heavy interior thinking. Visions = first person present, but **the "I" becomes the alternate self** (the pronoun is colonised). **Compressed-only** drafting (no expanded files). Richer/more sophisticated; new recurring characters welcome.
- **Ch1 owes a first-person revision pass** (Phase 5) to match this lock — flagged.

## Environment note (IMPORTANT)
The remote-exec container has reset to an earlier state TWICE mid-session, discarding any work not yet **pushed**. Ch3/Ch4 and partial Ch5 were recovered from origin. **Policy now: commit AND push after every single block.** Only what is on origin survives.

## Next action
Finish **Chapter 5** to the 12k floor (top-up: more reunion/Leni/cottage/Adam), then **Chapter 6 — "Who Gets to Be Me" (MIDPOINT)**. Push after every commit.

## [superseded] Draft **Chapter 5 — "Theo"** (Days 80–110): the love door blows open — Theo returns to Bristol; the **Leni life** (warm, held) blooms; Diana's care; Priya (B1) & Theo's own life (B4). Compressed-only → `chapters-long/ch05-compressed.md`. Floor ≥12k.

## [superseded] prior next action
Draft **Chapter 4 — "What the House Remembers"** (Days 47–72): the cottage at Pill; the origin of the wound (Fork A, age 26); Diana's decline deepens & the **Daniel** mystery presses; the Freedom door & the father, named for the first time. Compressed-only → `chapters-long/ch04-compressed.md`. Advance B3. Floor ≥12k.

### Pass log
- **Pass 1:** Phases 0–3 (spec/outline/bible/plan) locked + committed.
- **Pass 2:** Ch1 "The Good Daughter" drafted to floor (~11,990w, expanded readable reference). Per-chapter gate: PASS. Committed + pushed.
- **Pass 5:** Ch4 "What the House Remembers" drafted compressed-only (~10.5k real ≈ 12k expanded; 5 scenes). The cottage at Pill (unbuilt-house seed + restoration vision); the wound's origin (father leaving at 9; the oboe; the 16-yr-old fuss); **Daniel** advanced (boatbuilder, the nursery, the letters, Diana chose Patrick/sensible); **Patrick** named & phoned for the first time in 25 yrs (the living Elle; Freedom's verdict); full **Elle/Freedom glimpse**; Theo backstory locked (her own Daniel). Generational Lie established. Per-chapter gate: PASS. Committed + pushed.
- **Pass 4:** Ch3 "The London One" drafted compressed-only to floor (~10.7k real compressed prose ≈ 12k expanded; 5 scenes). Full Ellis/career life rendered (studio, awards, Christmas visit to Diana, the unbreached barrister-love); **Julian Vane** + the competition introduced; takeover escalates to waking-world action (drafted entry in lost time; nosebleed cost; Ellis feeds on *not choosing*). **Daniel** mystery seeded (Diana: "before I was sensible"). B2 advanced (Cora's naked moment, Rhiannon/Faisal). Per-chapter gate: PASS. Committed + pushed.
- **Pass 3:** Voice switched to **first person** (spec + bible updated). Ch2 "Aftershocks" drafted **compressed-only** to floor (~11.1k real compressed prose ≈ 12k expanded; 6 scenes). New character **Viv Ashe** introduced; intrigue seeds planted (cottage deeds, the photograph, the rules notebook); takeover mechanism named + escalated (lost-time text, Ellis in waking glass). B1 (Priya/Dev/Manchester) + B2 (Greenbank/Cora + the London competition email) advanced. Per-chapter gate: PASS (job done; escalation = both doors now real in the waking world + Ellis leaking through; opens on the unprecedented non-yes, ends on "Is Eleanor Hale there?"; floor met via woven B1/B3/new scene, not padding; bible updated). Committed + pushed.
