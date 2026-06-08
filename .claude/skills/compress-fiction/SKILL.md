---
name: compress-fiction
description: Two-layer compression codec for drafting long-form fiction at ~20x fewer output tokens. Use this when DRAFTING chapters/plot prose and the goal is to save tokens — Claude writes the chapter at full literary quality but applies word-level compression (vowel removal, suffix/word substitution) plus structural IR markers (scene headers, beat/register/rhythm codes, motif tracking) to every word as it writes. A cheap decoder model (e.g. DeepSeek) mechanically expands it back to full prose. Trigger when the user asks to "write compressed", "save tokens while drafting", "use the codec", or when a project's CLAUDE.md sets compressed drafting as the mode. Pair with the framework METHOD (Phase 4 Draft). Full rules in this skill's rulebook.md; decoder prompt in expand-prompt.md.
---

# Compress-Fiction — Fiction Compression Codec

A two-layer codec for long-form literary fiction that cuts **output** tokens ~20x.

- **Layer 1 — word compression:** vowel removal, suffix compression, common-word substitution.
- **Layer 2 — structural IR:** scene headers, beat types, register/rhythm codes, motif tracking, subtext markers.

Claude writes the chapter at **full literary quality** — every metaphor, rhythm decision, subtext beat — but spells it compressed as it goes. The intelligence lives in the compressed text; the decoder restores letters, not meaning.

## The Cardinal Rule
**Write the prose at full literary quality. Apply compression to the spelling, not the content.** Do NOT summarise, write notes, or use placeholders. Write the actual chapter — every sentence, beat, image — with vowels removed and common words substituted per `rulebook.md`. If compression would create ambiguity, write the word out in full (lossless beats compact).

## Honest caveats (read before using)
- This trades **legibility for output-token savings.** The draft is only as good as the prose Claude actually composes; the codec can't add quality, and a sloppy compressed draft expands into sloppy prose.
- **Expansion happens outside this environment** (paste `expand-prompt.md` as the decoder's system prompt, then feed it the compressed chapters). Keep the compressed `.md` files as the source of truth; treat expanded prose as a build artifact.
- **Never compress proper nouns**, numbers, or punctuation. Preserve `*italics*`, em-dashes `—`, ellipses, quotes exactly.
- Subtext (`SUBXT:`) must never leak into spoken dialogue; motifs (`MTF.ON:`) should be felt before named.
- If you need the prose to be **read/edited by a human or by Claude in-session**, draft uncompressed — compression is for bulk output you'll expand cheaply elsewhere.

## How to use (drafting a chapter)
**Inputs:** chapter № + title, POV order, scene briefs, active motifs, motifs to introduce, register target, character-state carryover (pull these from `OUTLINE.md` + `STORY-BIBLE.md`).

**Each scene opens with the full IR header:**
```
SCN[n] POV:NAME BEAT:type
SETTING: [compressed location]
ATMO: [compressed sensory/atmosphere]
CHR.ST: [compressed psychological state at open]
MTF.ACT: [active motifs]
REG: [register code]
RHYTM: [rhythm code]
```
Then the compressed prose. `¶` = paragraph break, `---` = scene section break. Inline markers: `XCHNG:` (dialogue block), `MTF.ON:[name]` / `MTF.REF:[name]`, `SUBXT:[…]`, `REG↑` / `REG↓`.

**Output path:** save as `chapters-long/ch[n]-compressed.md` (or `chapters/`), and after writing, print the estimated expansion cost.

## Quick reference (full tables in rulebook.md)
- **Vowel removal:** ≤4 chars keep as-is; 5–6 remove one medial vowel; ≥7 aggressive. Keep word-initial vowels. (`sweating→swtg`, `beautiful→btfl`, `recognition→rcgtn`.)
- **Suffixes:** `-ing→-g`, `-tion/-sion→-tn`, `-ment→-mt`, `-ness→-ns`, `-ed→-d`, `-er/-or→-r`, `-ful→-fl`, `-less→-ls`, `-ight→-t`.
- **Words:** the→th, and→&, with→w/, because→bc, through→thru, something→smth, before→bfr, could→cld, would→wld, herself→hrslf … (see rulebook).
- **Beats:** intro · tens · revl · turn · cnnctn · cls.
- **Registers:** lrcl-dns · lrcl-lt · grnd · intrr-hvy · dlg-drv.
- **Rhythms:** lng-obsrvtnl · shrt-shp · mxd · ascndg · dscndg.

## Files in this skill
- `rulebook.md` — the full shared codec (encoder + decoder). Required for both writing and expanding.
- `expand-prompt.md` — paste as the decoder model's system prompt to mechanically expand compressed chapters.

*Codec v1.0.*
