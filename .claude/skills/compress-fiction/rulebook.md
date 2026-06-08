# Fiction Compression Rulebook — v1.0

> Shared codec between Claude (encoder) and the decoder model (e.g. DeepSeek).
> Claude writes compressed. The decoder restores. No creativity at decode time — only rules.

---

## LAYER 1 — WORD-LEVEL COMPRESSION

### 1.1 Vowel Removal
Remove medial vowels (not at word start) when the result is unambiguous.
- ≤ 4 chars → keep as-is (`love`, `from`, `into`, `over`, `ever`)
- 5–6 chars → remove one medial vowel if unambiguous (`under→undr`, `voice→vce`)
- ≥ 7 chars → aggressive removal (`beautiful→btfl`, `sweating→swtg`, `through→thru`)

**Always keep:** word-initial vowels (`above→abv`, `across→acrss`); proper nouns (never compress people/place names); numbers; single-vowel words (`a`, `I`, `oh`).

Examples: sweating→swtg · beautiful→btfl · character→chr · something→smth · everything→evrythg · nothing→nthg · recognition→rcgtn · conversation→cnvs · psychological→psycl · floorboard→flrbrd · performance→prfm · atmosphere→atmsphr · deliberately→dlbrtly · comfortable→cmftbl · particular→prtclr · immediately→immdtly · instrument→instrmt

### 1.2 Suffix Compression (apply AFTER vowel removal)
| Suffix | → | Example |
|---|---|---|
| -ing | -g | walking→wlkg |
| -tion/-sion | -tn | recognition→rcgtn |
| -ment | -mt | moment→mmnt |
| -ness | -ns | stillness→stlns |
| -ed | -d | watched→wtchd |
| -er/-or | -r | speaker→spkr |
| -est | -st | loudest→ldst |
| -ful | -fl | beautiful→btfl |
| -less | -ls | restless→rstls |
| -ly | keep | (too many collisions) |
| -ough | -uf/-o | enough→enuf, though→tho, through→thru |
| -ight | -t | night→nt, light→lt, right→rt |

### 1.3 Common Word Substitutions (wholesale — don't also apply vowel rules)
the→th · and→& · with→w/ · without→w/o · because→bc · between→btwn · through→thru · something→smth · everything→evrythg · nothing→nthg · before→bfr · after→aftr · always→alwys · never→nvr · every→evry · people→ppl · about→abt · around→arnd · against→agnst · another→anthr · although→altho · already→alrdy · toward→twrd · beneath→bnth · herself→hrslf · himself→hmslf · themselves→thmselvs · yourself→yrslf · someone→smone · somehow→smhow · somewhere→smwhr · whatever→whtevr · whenever→whnvr · whoever→whovr · however→hwvr · could→cld · would→wld · should→shld · might→mgt · perhaps→prhs · probably→prby · suddenly→sdnly · quietly→qtly · carefully→crfly · slowly→slwly

### 1.4 Collision Resolution
More common word takes the compressed form; rarer is written out.
- `strng` = strong; `strange` = write out
- `nt` = night; `not` = keep as-is
- `lt` = light; `lot` = keep as-is
- `rt` = right; `rot` = write out
- ≤4-char collisions (bit/bat/bet, fill/fall, read/ride, mind/mend) → keep as-is
- **General rule:** ambiguity unresolved by context → write the word out in full. Lossless beats compact.

### 1.5 Punctuation & Structure
Preserve punctuation exactly (commas, em-dashes `—`, ellipses, `?`, quotes). `*italics*` preserved. `¶` = paragraph break. `---` = scene section break.

---

## LAYER 2 — STRUCTURAL IR MARKERS
On their own lines; frame the prose, not part of it.

### 2.1 Scene header (always present)
```
SCN[n] POV:NAME BEAT:type
SETTING: [compressed location]
ATMO: [compressed sensory/atmosphere]
CHR.ST: [compressed psychological state at open]
MTF.ACT: [active motifs]
REG: [register code]
RHYTM: [rhythm code]
```

### 2.2 Beat types
intro (establish) · tens (tension build) · revl (revelation) · turn (decision/pivot) · cnnctn (intimacy) · cls (close/transition)

### 2.3 In-scene markers
`XCHNG:` dialogue block · `MTF.ON:[name]` motif first activation · `MTF.REF:[name]` motif callback · `SUBXT:[…]` what is NOT said · `REG↑`/`REG↓` register shift

### 2.4 Register codes
`lrcl-dns` lyrical dense (long, metaphor-heavy) · `lrcl-lt` lyrical light · `grnd` grounded/plain · `intrr-hvy` interiority heavy · `dlg-drv` dialogue driven

### 2.5 Rhythm codes
`lng-obsrvtnl` 30–50w accumulating · `shrt-shp` 8–15w staccato · `mxd` alternating · `ascndg` lengthening · `dscndg` shortening

---

## LAYER 2 — EXPANSION RULES (decoder)
- Scene headers → scene formatting; set POV/beat/register/rhythm; do not print the marker.
- `BEAT:intro` ground reader first · `tens` short sentences, physical detail · `revl` slow, one sentence per beat · `turn` body language then interior, never state the decision · `cnnctn` interior close to surface · `cls` return to an earlier sensory anchor.
- `MTF.ON`/`MTF.REF` weave naturally, felt not named; remove marker.
- `SUBXT:` render as the space around speech (pause, gesture, changed subject); never as dialogue; remove marker.
- `XCHNG:` each speech act its own paragraph, ≤1 prose beat between.
- Registers/rhythms as in 2.4/2.5. `¶` new paragraph; `---` scene break.

---

## ENCODING EXAMPLE
Full:
> The house on Egerton Road had been sweating since ten o'clock, and by midnight the walls had given up pretending to be walls.

Compressed:
```
Hs on Egerton Rd hd bn swtg snc tn o'clk, & by mdnght th wlls hd gvn up prndg to b wlls.
```
Ratio ~20x.

*Rulebook v1.0.*
