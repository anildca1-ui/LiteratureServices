# Day 5 (executed) — Mock sweep target + D1 keyword set

This completes Day 5 per the design in `day-5-mock-sweep-design.md`: target
chosen and verified, relevance criteria drafted for freezing, D1 keyword
engineering run, search strings prepared for both phases.

---

## 1. Chosen target: US11174678B2 — "Locking assembly for a telescoping ladder"

Verified via bibliographic sources, 26 Jul 2026 ([Google Patents](https://patents.google.com/patent/US11174678B2/en), USPTO):

| Field | Value | Status |
|---|---|---|
| Assignee | Core Distribution Inc (US — maker of Xtend+Climb ladders) | verified |
| Inventors | Mitchell I. Kieffer, Nathan L. Schlueter | verified |
| Priority | 8 Nov 2017 (provisional 62/583,230) | verified |
| Application | US 16/180,470 | verified |
| Grant date / current legal status | [VERIFY — read off Google Patents page] | open |
| Claim 1 verbatim text | [VERIFY — copy from Google Patents before freezing §3] | open |
| IPC/CPC codes on the patent | [VERIFY — read off Google Patents page] | open |

**Why this target fits the §1 selection rules:** mechanical, in a category
(telescoping ladders) dominated by small Chinese manufacturers filing
utility models — the workshop-vocabulary effect's home turf (the Zhejiang
hardware clusters produce most of the world's telescoping ladders);
US-originated, so no Chinese keywords leak from the target; priority 2017,
inside the 2012–2020 window; claim 1 has clean, countable structural
features.

Automated fetch of the full patent text is blocked (Google Patents, Justia,
FPO and USPTO all refuse robots), so the three [VERIFY] rows above are a
two-minute manual step: open the Google Patents page, copy claim 1 into §3,
note grant date and CPC codes. **Do this before running any search.**

## 2. Abstracted concept (the D1 `<technical_concept>` input — no client, no parties)

> A telescoping ladder has nested tubular columns that slide to extend and
> collapse, with hollow rungs joining each pair of columns. Each rung houses
> a locking assembly: a spring-biased locking pin slides inside the rung
> between an extended position, in which it engages the adjacent column
> section to prevent collapse, and a retracted position that frees the
> section. A button on the front face of the rung is rotatable (or
> pressable) between locked and unlocked positions; operating the button
> retracts the pin. Because each rung carries its own assembly, the ladder
> extends and retracts section by section under user control.

## 3. Relevance criteria — DRAFT, freeze after pasting claim 1

- **RC1** — telescoping ladder with nested tubular columns/sections
- **RC2** — locking pin housed in or on the rung, slidable between an
  extended (section-engaging) and a retracted position
- **RC3** — manual actuator (button/knob/lever) at the rung, movable between
  locked and unlocked positions
- **RC4** — mechanism converting actuator motion into pin retraction
  (cam/ramp/linkage/rotation-to-translation)
- **RC5** — per-rung locking assemblies enabling section-by-section
  extension/collapse

Scoring for D2 triage: High = RC1 + three or more of RC2–RC5;
Med = RC1 + RC2 or RC1 + RC4; Low = RC1 + generic locking only; None =
otherwise. **Once claim 1 is pasted and these are adjusted, date this
section and change "DRAFT" to "FROZEN" — no edits after.**

## 4. D1 output — Chinese keyword set

Generated per `prompts/d1-keyword-engineering.md`. Per D1's constraint,
uncertain terms carry **[UNCERTAIN — verify with reviewer]**; the whole set
goes to the reviewer candidates as audition Task A (with one deliberately
planted dud — add it before sending, note which it was). Remaining D1 step
for you: run the §2 concept through DeepSeek/Qwen for extra colloquial
terms (generic concept only — D0-compliant) and union before review.

### 4a. Ladder / product terms

| # | CN | Pinyin | Back-translation | Register / where it appears | EN-MT miss risk |
|---|---|---|---|---|---|
| 1 | 伸缩梯 | shēnsuō tī | "extend-retract ladder" | Standard term; invention + UM titles, commerce | Low — MT gives "telescopic ladder" |
| 2 | 伸缩式梯子 / 伸缩梯子 | shēnsuōshì tīzi | "telescoping-type ladder" | Formal variant in UM titles | Low |
| 3 | 升降梯 | shēngjiàng tī | "rise-lower ladder" | Appears in UM filings | **High** — MT renders as "elevator/lift"; an English "ladder" query misses these entirely |
| 4 | 竹节梯 | zhújié tī | "bamboo-joint ladder" | Colloquial trade name for telescoping ladders (e-commerce, small-maker filings) [UNCERTAIN — verify with reviewer] | **Critical** — MT gives "bamboo ladder"; no English searcher queries "bamboo" for an aluminium product |
| 5 | 折叠梯 / 折叠伸缩梯 | zhédié tī | "folding (telescopic) ladder" | Adjacent category, frequently combined in titles | Medium |
| 6 | 铝合金伸缩梯 | lǚhéjīn shēnsuō tī | "aluminium-alloy telescopic ladder" | Commerce-flavoured UM title padding | Low, but useful as an exact-phrase probe |
| 7 | 人字梯 | rénzì tī | "人-character (A-frame) ladder" | Adjacent config; include only if combo claims matter | Medium — MT "herringbone ladder" occurs |

### 4b. Locking-mechanism terms

| # | CN | Pinyin | Back-translation | Register / where it appears | EN-MT miss risk |
|---|---|---|---|---|---|
| 8 | 锁定机构 | suǒdìng jīgòu | "locking mechanism" | Formal; invention + UM | Low |
| 9 | 锁紧机构 | suǒjǐn jīgòu | "lock-tight mechanism" | Extremely common in UM claims | Medium — MT wavers between "locking/clamping" |
| 10 | 锁止机构 | suǒzhǐ jīgòu | "lock-stop mechanism" | Formal variant (auto/mech drafting habit) | Medium |
| 11 | 锁定装置 | suǒdìng zhuāngzhì | "locking device" | Formal | Low |
| 12 | 自锁 | zìsuǒ | "self-lock(ing)" | Common modifier in titles/claims | Medium — MT sometimes "self-locking", sometimes garbled |

### 4c. Pin / actuator / structure terms (the recall-delta core)

| # | CN | Pinyin | Back-translation | Register / where it appears | EN-MT miss risk |
|---|---|---|---|---|---|
| 13 | 锁销 | suǒxiāo | "lock pin" | Formal | Low |
| 14 | 插销 | chāxiāo | "insert pin" (bolt/latch) | Everyday workshop word, very common in UM | **High** — MT gives "bolt"/"latch"; "locking pin" queries miss it |
| 15 | 定位销 | dìngwèi xiāo | "positioning pin" | Common in UM for exactly this function | **High** — reads as alignment dowel in English; searchers skip it |
| 16 | 卡销 | kǎxiāo | "catch/snap pin" | Workshop register [UNCERTAIN — verify with reviewer, incl. reading] | **High** — MT unstable: "clamp pin", "card pin" |
| 17 | 弹簧销 | tánhuáng xiāo | "spring pin" | Common; spring-biased pin | Medium |
| 18 | 按钮 / 解锁按钮 | ànniǔ / jiěsuǒ ànniǔ | "(unlock) button" | Common | Low |
| 19 | 按压式 | ànyā shì | "press-type" | Title modifier in UM | Medium |
| 20 | 套管 | tàoguǎn | "sleeve tube" | The nested sections, workshop register | **High** — MT gives "casing/sleeve/bushing"; "column/section" queries miss it |
| 21 | 内管 / 外管 | nèiguǎn / wàiguǎn | "inner tube / outer tube" | Standard in telescoping-structure claims | Medium |
| 22 | 套接 | tàojiē | "sleeve-joined" | Claim verb for telescoped engagement | **High** — MT "socket connection" |
| 23 | 踏棍 / 横档 | tàgùn / héngdàng | "tread bar / crossbar" (rung) | 踏棍 semi-formal; 横档 workshop [UNCERTAIN — verify with reviewer] | **High** — MT gives "crossbar"; "rung" queries miss 横档 documents |
| 24 | 踏板 | tàbǎn | "tread plate" | Step-style rungs | Medium — MT gives "pedal" |

### 4d. Classification codes (all [VERIFY] — cross-check against the target's own page and its CN family)

- **E06C 1/12** — extensible/vertically-adjustable ladders — primary family
  [VERIFY exact subgroup; check for a deeper telescopic subgroup on the
  target's page]
- **E06C 7/00** family — ladder details; rung subgroups [VERIFY numbers]
- **F16B 7/00** family — rod/tube connections; the telescoping-member
  locking subgroups (F16B 7/10, F16B 7/14 candidates) [VERIFY both — from
  memory, unreliable per D8 discipline]

Per the design: the authoritative code list is whatever is printed on
US11174678B2 and its citing/cited CN documents — read, don't recall.

### 4e. CNIPA search strings (syntax [VERIFY] against CNIPA advanced-search help before running)

Run against 实用新型 (utility models) first, then 发明 (inventions):

1. `摘要=(伸缩梯 OR 伸缩式梯 OR 竹节梯 OR 升降梯) AND 摘要=(锁 OR 销)`
2. `名称=(伸缩 AND 梯) AND 摘要=(锁紧 OR 锁定 OR 自锁 OR 锁止)`
3. `摘要=(插销 OR 锁销 OR 定位销 OR 卡销 OR 弹簧销) AND 摘要=梯`
4. `分类号=E06C1/12 AND 摘要=(按钮 OR 按压 OR 锁)`
5. `摘要=(套管 AND 梯) AND 摘要=(锁 OR 卡)`

## 5. English baseline query pack (run FIRST, 3h time-box, log everything)

Google Patents (`patents.google.com`), results filtered to CN:

- `(telescoping OR telescopic OR extensible OR extendable) ladder (lock OR locking OR latch) country:CN`
- `ladder rung (pin OR bolt OR button) country:CN`
- `CPC=E06C1/12 country:CN` — browse newest-first and relevance
- Citation walk: every CN document cited by / citing US11174678B2 and its
  family members
- Espacenet cross-check with the same terms (`worldwide.espacenet.com`)

Log columns (keep in a sheet as you go):
`time | database | query string | filters | hit count | shortlist adds | notes`

## 6. Status: what remains to run the sweep

1. [ ] Open US11174678B2 on Google Patents; fill the three [VERIFY] rows in §1 (2 min)
2. [ ] Adjust §3 against claim 1; mark FROZEN with date
3. [ ] Run DeepSeek/Qwen colloquial pass on §2; union into §4 (15 min)
4. [ ] English baseline per §5 — 3 hours, honest effort, freeze the shortlist
5. [ ] Send §4 union to the three reviewer candidates as audition Task A (plant the dud first)
6. [ ] Native CNIPA phase per §4e — 3 hours
7. [ ] Score per design §4; apply the §5 interpretation table — **this is the Week 3 gate**
