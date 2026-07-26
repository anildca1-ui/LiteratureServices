# Day 5 — Mock sweep test design

Executed per the Day 5 instruction: *"Design the test so the result is
unambiguous — including how I choose the target patent, how I record the
English baseline, and what result would honestly mean the recall delta
doesn't exist."* This is the Week 3 gate: the output decides whether T3
lives (see `kill-criteria.md`).

## What is being tested

**Claim under test:** native-Chinese-keyword searching of CN utility models
and journals finds materially more relevant art than a competent free
English/MT search (Google Patents + Espacenet), in a mechanical domain —
the brief claims 20–40%.

Not under test: translation quality, date verification value, or T1/T2.
Keep the test to the recall claim only.

## 1. Choosing the target

Pick a **granted patent claim** meeting all of:

1. **Mechanical/electromechanical domain** with heavy small-manufacturer
   activity in China — packaging machinery, fastening, fixtures, consumer
   appliance mechanisms. This is where the workshop-vocabulary effect is
   claimed to live. Avoid chemistry/pharma (nomenclature is international)
   and software (thin utility-model art).
2. **Not Chinese-originated** (an Indian, US or EP family) — so the target
   itself doesn't leak Chinese keywords into either search.
3. **Filed 2012–2020** — old enough for a deep CN utility-model corpus,
   recent enough to be realistic client work.
4. **3–5 clean structural claim features** you can hold in your head.

Choose it *before* running any search, write the abstracted concept (3–8
sentences) and the 3–5 relevance criteria, and **freeze them in writing**.
Changing the criteria after seeing results invalidates the test.

## 2. English baseline (run FIRST, then freeze)

- Tools: Google Patents and Espacenet only — what the target client already
  uses free.
- Time-box: **3 hours**, honestly competent: English keywords + synonyms,
  IPC/CPC codes from the target family, citation walking, results filtered
  to CN publications, MT abstracts read.
- Record in a log as you go: every query string, database, filter, hit
  count, and the running shortlist.
- Output: **EN-baseline shortlist** — up to 20 CN documents ranked
  High/Med/Low against the frozen criteria, with the MT passage that
  justifies each. Freeze the file (date it; no edits after).

Do the baseline at full effort. A sandbagged baseline makes the delta a
lie you will eventually sell to a client who can check it.

## 3. Native-keyword phase (run SECOND)

- Generate the keyword set with **D1** (Claude) + DeepSeek/Qwen for
  colloquial terms (generic concept only — D0 applies even to mock work);
  union the lists; have a reviewer candidate validate (this doubles as the
  Day 6–7 reviewer audition).
- Search CNIPA (and CNKI journals if in scope) with the validated CN terms
  and the same IPC/CPC codes. Same time-box: **3 hours**. Same logging.
- Output: **CN-native shortlist** — up to 20 documents ranked against the
  same frozen criteria via **D2** triage, reviewer-read for the top
  candidates.

## 4. Scoring — defined before running anything

De-duplicate by patent family across both shortlists, then:

- **U** = documents on the CN-native shortlist, relevance Med or High,
  whose family appears nowhere in the EN-baseline log (not just shortlist —
  log; if the EN search surfaced it and you discarded it, it doesn't count
  as unique)
- **R** = all Med+High documents in the union of both shortlists
- **Recall delta = U / R**, plus a headline count of High-relevance uniques
- Relevance calls for uniques are made by the reviewer **blind** to which
  search surfaced each document; dates of the top uniques verified against
  the CNIPA register (that's the other half of the T3 pitch — prove it
  works)

## 5. Honest interpretation — written down in advance

| Result | Meaning | Action |
|---|---|---|
| Delta ≥ 20% of R, with ≥ 2 High uniques | Brief's claim holds | T3 lives; build `sample-sweep.pdf` from the side-by-side table |
| Delta 10–20%, ≥ 1 High unique | Real but thinner than claimed | T3 lives at lower confidence; sell the demo, don't quote "20–40%" |
| Delta < 10%, or uniques all Med/Low | **The recall delta doesn't exist** at sellable strength | Kill T3 per Week-3 criterion. T1/T2 only, or reconsider entirely |

**The back-translation check (run before declaring victory):** take the CN
keywords that produced the uniques, back-translate them to English, and
re-run the EN baseline with those terms for 30 minutes. If that closes most
of the gap, the durable product is a *keyword list*, not a search service —
that is a much weaker moat, and the honest conclusion is "delta exists but
is cheaply replicable." Write that down if it happens; do not quietly omit
it from the sample PDF.

**Anti-self-deception rules:** EN baseline always first; frozen criteria;
uniqueness judged against the full EN log; blind reviewer relevance calls;
one person (you) does both searches at the same time-box. If the result is
ambiguous, the answer to "does the delta exist?" is *no* — ambiguity does
not round up to a product.

## 6. Deliverable

Whatever the outcome, write the result as a two-page side-by-side:
EN-baseline shortlist vs CN-native shortlist, uniques highlighted, method
note, scope statement. If T3 lives, this becomes `sample-sweep.pdf` — the
demo that sells T3. If it dies, it becomes the document that saved you six
months.

**Next step after this design:** choose the target (§1), then run
`prompts/d1-keyword-engineering.md` on it — that is the rest of Day 5.
