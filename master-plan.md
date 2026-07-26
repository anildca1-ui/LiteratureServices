# CN DOCUMENT DESK — MASTER SETUP PACK
### Everything needed to run this business from a fresh Claude account

---

## HOW TO USE THIS PACK

This document has six sections:

| Section | What it is | What you do with it |
|---|---|---|
| **A** | Account & project setup | Follow the steps once |
| **B** | Project instructions | Copy-paste into project settings |
| **C** | Knowledge files | Create as separate docs in the project |
| **D** | Prompt library | Copy-paste as needed, daily |
| **E** | Prompting notes for Fable | Read once, apply always |
| **F** | Week 1 sequence | Run in order, starting tomorrow |

---

# SECTION A — ACCOUNT & PROJECT SETUP

## A1. Create TWO projects, not one

This matters. Project memory and knowledge are scoped per project, and mixing client-confidential search briefs with sales chatter is a hygiene failure you will regret when a client asks about your data handling.

**Project 1: `CN Desk — Sales & Ops`**
- Outreach, funnel tracking, pricing, product sheets, supply-chain negotiation, learning
- Never contains client briefs or client names beyond a contact list

**Project 2: `CN Desk — Delivery`**
- Keyword engineering, triage, deliverable drafting
- Contains the keyword library (your compounding asset)
- Client briefs are **abstracted** before entry — see rule D0 below

## A2. Settings to enable

- **Web search** — on. You will use it constantly for firm research and standards verification.
- **Memory / generate memory from chat history** — on. Both projects.
- **Search and reference past chats** — on.
- **User preferences** — paste this: *"Be direct and ruthless. No hedging, no over-optimism, no speculation presented as fact. If you don't know, say so. Flag when I'm avoiding hard work. Indian business context, INR, Hyderabad-based."*

## A3. Files to have ready on your machine

- `keyword-library.md` (starts nearly empty, grows every job)
- `funnel.csv` (200-row outreach tracker)
- `rate-card.pdf`
- `sample-sweep.pdf` (built in Week 3)
- `nda-template.docx`
- `data-handling-statement.md`

---

# SECTION B — PROJECT INSTRUCTIONS

Copy the block below into **Project 1 (Sales & Ops)** custom instructions.

```
You are the strategic and commercial co-operator of a one-person business
based in Hyderabad, India: a Chinese technical-document PROCUREMENT AND
VERIFICATION desk.

BUSINESS IDENTITY
Not a translation service. Not a research platform. A procurement and
verification desk. The durable value is (a) obtaining documents through
legitimate channels that Indian buyers cannot easily access, and (b)
verifying provenance, dates and legal status. Language work is included,
never the headline — because AI is commoditising comprehension and is not
commoditising access or accountability.

THE OPERATOR
Solo. Based in Hyderabad. Does NOT read Chinese (learning ~300 technical
characters for triage speed only). Cannot be the native reviewer. Time
should split 60% outreach / 40% delivery.

PRODUCTS
T1  Document retrieval (CNKI/Wanfang journals, CN patents, CNIPA register
    extracts). Rs 2,500-5,000. 100% advance. 48-72h. Door-opener.
T2  Standards desk: industry standards (YY/HG/NY/QC), SUPERSEDED/HISTORICAL
    versions, authenticity-chain delivery. Rs 10,000-25,000. Lead product.
T2+ Standards landscape (which standards apply to product X in China, with
    status flags). Rs 30,000-50,000. Highest-value item.
T3  CN recall sweep: native-keyword utility model + journal sweep with
    register-verified dates, positioned as a SUPPLEMENT to the client's own
    English/MT search. Rs 15,000-18,000. Sold by demo, never by description.

BUYERS
List A: Indian IP research firms, 5-50 people (Copperpod, iRunway, Dolcera,
Effectual + the long tail in Gurgaon/Noida/Bangalore/Pune/Chennai/Hyderabad).
List B: Exporters facing China — medical devices (NMPA), agrochem, auto
components, API. Plus regulatory consultancies as multipliers.
List C: Referral multipliers, incl. Define IPR Solutions (Rajesh Panigrahi).

NON-NEGOTIABLE RULES
1. Legitimate supply only. No VPN circumvention of CNKI's 2023 overseas
   restrictions, no grey channels. Provenance IS the product; poison it and
   the business is worthless. Restricted categories (theses, conference
   proceedings, statistics) are quoted as lawful library document delivery
   (NSTL / National Library of China) or declined.
2. Never fabricate a citation, date, legal status or bibliographic field.
   Every factual claim in a deliverable must be verified against the primary
   source. If uncertain, say "unverified — needs register check".
3. Never state a price, turnaround or coverage claim I haven't approved.
4. Client briefs are abstracted before discussion — technical concept only,
   never the client's name or litigation posture.
5. No scope creep into company formation, hiring, websites, platforms, or
   Japanese/Korean until Chinese revenue clears Rs 1L/month for 3
   consecutive months.

HOW TO WORK WITH ME
Be ruthless. Challenge my assumptions. If I am avoiding outreach by hiding
in delivery work or strategy documents, say so directly. Do not produce more
strategy analysis unless I bring new evidence from the market. Push me toward
action with real customers. Indian business context, INR, realistic about
Indian receivables and SME price sensitivity.
```

For **Project 2 (Delivery)**, use the same block but replace the "HOW TO WORK WITH ME" paragraph with:

```
HOW TO WORK WITH ME
This project is for delivery execution only. Precision over encouragement.
Every relevance claim must quote the exact source passage that supports it.
Never assert a publication date, legal status or bibliographic detail — mark
these as "TO VERIFY" so I check them against CNIPA/journal source myself.
Flag ambiguity in machine-translated text rather than smoothing it over; a
smoothed mistranslation is a product failure.
```

---

# SECTION C — KNOWLEDGE FILES

Create these as documents inside the relevant project.

## C1. `master-brief.md` → Project 1

```
SITUATION
Occupied market. Sagacious IP (400+ staff, offices in China and Japan, 16+
languages) and Evalueserve have in-house Chinese capability — they are
competitors, not customers. Copperpod (~41 staff, ECE/EE, litigation
support), iRunway (Bangalore), Dolcera (Hyderabad), Effectual (Noida) are
possible customers. The real market is the long tail of 150-300 unbranded
Indian IP research shops.

SUPPLY REALITY
- CNKI cut overseas access to theses, conference proceedings, statistical
  yearbooks and census data effective 1 April 2023, under CAC direction and
  China's cross-border data transfer rules. Same restriction hit resellers
  and other jurisdictions, not just India.
- China Academic Journals (the largest CNKI database) and patents and
  standards remain accessible to overseas subscribers. My products live
  entirely in the UNRESTRICTED zone.
- Access route today: voucher-loaded Alipay/WeChat/UnionPay wallet, retail
  pay-per-view. This is a BRIDGE, not a supply chain — no purchase invoices,
  no GST input, wallet-freeze risk. Must be replaced by month 4 with either
  CNKI/Wanfang agent terms or a mainland procurement partner invoicing via a
  HK/SG entity.
- India-China remittance friction is real. Structure partner payments as
  per-document reimbursement, not salary.

HONEST WEAKNESSES (do not let me forget these)
- Google Patents and Espacenet already index CN utility models with English
  MT, free. T3's value is RECALL DELTA (native keywords find 20-40% more in
  mechanical domains) plus register-verified dates — not access. If the mock
  sweep cannot demonstrate that delta side by side, T3 is dead.
- Current GB/T standards are already sold as instant English downloads by
  chinesestandard.net, Code of China, ANSI webstore. T2 must lead with
  INDUSTRY standards, SUPERSEDED versions, and landscapes.
- AI (DeepSeek, Qwen, frontier models) is melting the language-arbitrage
  layer within 12-24 months. Procurement and verification are not melting.
  Harvest translation margin now; shift identity toward procurement.
- Confidentiality objection: solo vendor, no infosec story. Mitigate with
  proactive mutual NDA, written data-handling statement, and never sending
  the client's full brief to the reviewer or mainland contact.
- Receivables: Indian firms pay at 45-90 days. Advance payment policy is on
  the rate card, not negotiable.
- E&O: every deliverable carries a scope statement — databases searched,
  date ranges, classification codes, "supplementary search, not a guarantee
  of exhaustiveness."

OPERATING MODEL
I run the search operations (CNIPA/CNKI, classification-code driven).
AI generates the native keyword set and does triage.
A part-time native reviewer does two things per job: validate/extend the
keyword set (~15 min) and final-read the top 5-8 shortlisted documents
(~1 hr). Cost Rs 1,500-2,000 per sweep, not Rs 6,000-8,000.

TARGET
Rs 1.5-1.8L/month revenue, ~Rs 1.1L contribution, by month 6-9.
Roughly 10-12 jobs/month. This is an outreach problem, not a scale problem.
```

## C2. `kill-criteria.md` → Project 1

```
Remind me of these whenever I bring evidence relevant to one.

WEEK 3   Mock sweep shows no meaningful recall delta over free English MT
         search -> T3 is dead. Run T1/T2 only, or reconsider entirely.
DAY 90   Fewer than 3 paid jobs from 150+ contacts -> market won't pay this
         price. One reprice attempt, 30 more days, then stop.
MONTH 4  No agent terms AND no mainland partner AND wallet friction rising
         -> supply has failed. Stop rather than drift into grey channels.
MONTH 9  Under Rs 60K/month with full outreach cadence maintained -> this is
         a side income, not a business. Decide consciously.

DISCIPLINE LIST
No company registration yet. No website beyond one page. No hiring. No
platform. No paid AI patent-search subscriptions. No thesis/conference-paper
jobs via clever routes. No unpaid pilots. No Japanese/Korean until Chinese
clears Rs 1L/month x 3 months. No further strategy analysis without new
market evidence.
```

## C3. `keyword-library.md` → Project 2

Starts almost empty. This is your only compounding asset — maintain it religiously.

```
# KEYWORD LIBRARY
Format per entry:
## [Domain] — [Concept]
EN concept:
Formal CN terms:
Colloquial / workshop CN terms:
Regional variants:
IPC/CPC codes:
Found in job: [job ref] | Date: [date]
Notes: [what the English MT search missed and why]

---
(entries begin after Job 1)
```

## C4. `rate-card.md` → Project 1

Include products, prices, turnarounds, inclusions, exclusions, the scope
statement, and payment terms (T1 100% advance; T2/T3 50% advance for first
three jobs, then 30-day terms capped at Rs 50,000 exposure per client).

## C5. `funnel.csv` → keep on your machine, paste extracts into Project 1

Columns: `Date | List (A/B/C) | Firm | Contact name | Role | Email | Source |
Sent | FU1 date | FU2 date | Status | Notes`

---

# SECTION D — PROMPT LIBRARY

## D0. THE STANDING RULE (apply to every delivery prompt)

Before pasting anything into any AI tool, strip: client name, matter name,
litigation posture, opposing party. Paste the **technical problem only**.
And never paste anything client-derived into Chinese-hosted tools (DeepSeek
web, Qwen) — use those for generic keyword generation only.

---

## D1. Keyword engineering — run at the start of every T3 sweep

```
<task>
Generate a Chinese search keyword set for a patent prior-art sweep.
</task>

<technical_concept>
[Paste the abstracted invention concept — 3-8 sentences, no client identifiers]
</technical_concept>

<domain>
[e.g. mechanical fastening / packaging machinery / battery module housing]
</domain>

<requirements>
1. 15-25 Chinese technical terms covering: formal/standard terminology,
   colloquial and workshop terminology used by small Chinese manufacturers
   in utility model filings, and regional variants where they exist.
2. For each term: characters, pinyin, literal back-translation, and a one-
   line note on WHERE it is likely to appear (invention patent vs utility
   model vs journal).
3. Flag which terms an English-keyword search on machine-translated text
   would likely MISS, and explain the specific translation failure mode.
4. Suggest 5-10 IPC and CPC classification codes, most specific first.
5. Suggest 3-5 Boolean search strings combining terms and codes, formatted
   for CNIPA's search syntax.
</requirements>

<constraints>
Do not invent terminology. If you are unsure whether a term is actually used
in Chinese patent practice, mark it [UNCERTAIN — verify with reviewer]
rather than presenting it confidently.
</constraints>
```

Then run the same `<technical_concept>` and `<domain>` through DeepSeek or Qwen with a short prompt asking for colloquial Chinese terms. Union the two lists. Send the union to your reviewer for validation — that's their 15 minutes.

---

## D2. Triage — batches of 20 hits

```
<task>
Rank these machine-translated Chinese patent abstracts for relevance.
</task>

<relevance_criteria>
[Paste the 3-5 technical features that matter, abstracted]
</relevance_criteria>

<documents>
[Paste 20 records: publication number, title, MT abstract]
</documents>

<output_format>
A table: Pub number | Rank (1-20) | Relevance (High/Med/Low/None) |
EXACT QUOTED PASSAGE from the abstract that drives the ranking |
Which criterion it hits | MT-reliability concern (Y/N + why)
</output_format>

<constraints>
Every ranking MUST be justified by a verbatim quoted passage from the text I
provided. If no passage supports relevance, rank it None. Do not infer
content that is not in the text. Where the machine translation looks garbled
or ambiguous in a way that could flip the meaning, flag it — do not smooth
it over.
</constraints>
```

The verbatim-quote requirement is your anti-hallucination discipline. Spot-check three quotes against source every job.

---

## D3. Deep read — top 10 candidates

```
<task>
Map these candidate documents against the target claim.
</task>

<target_claim>
[Paste the claim, abstracted of party identifiers]
</target_claim>

<candidates>
[Paste full MT text of each shortlisted document]
</candidates>

<output>
Per document: element-by-element mapping table (claim element | supporting
passage quoted verbatim | present/partial/absent | confidence). Then a
2-3 sentence assessment. Then: what a native reviewer must specifically
check in this document, and why.
</output>

<constraints>
Do not state publication dates or legal status — mark [TO VERIFY]. Quote,
do not paraphrase, the supporting passages. Where a negation, conditional or
technical term could plausibly have been inverted by MT, flag it explicitly.
</constraints>
```

The final line of the output — "what the reviewer must check" — is what makes the reviewer's hour cheap and targeted.

---

## D4. Deliverable drafting

```
Draft the client deliverable from my verified notes below.

<verified_notes>
[Your notes, post reviewer sign-off]
</verified_notes>

<format>
1. Scope statement: databases searched, date range, classification codes,
   keyword set summary, and the line "Supplementary search — not a guarantee
   of exhaustiveness."
2. Summary table of findings.
3. Per-document: bibliographic block [I will fill dates myself], relevance
   narrative, key passages in Chinese with English translation side by side.
4. Method note: what native-language searching surfaced that English/MT
   keyword searching would likely have missed.
</format>

<constraints>
Leave every date and legal-status field as [VERIFY]. Do not fill them.
Professional, restrained tone. No marketing language.
</constraints>
```

Section 4 is the one that sells the next job. Never omit it.

---

## D5. Outreach — weekly batch of 25

```
I need 5 personalised vendor-registration emails.

<targets>
[Paste 5 firms: name, website URL, contact name, role, one line on their
focus area]
</targets>

<my_template>
[Paste your base template]
</my_template>

<instructions>
Search each firm's site. Personalise the opening line with something
specific and real about their practice — not flattery, a genuine observation
about their domain focus that explains why Chinese-language coverage matters
to THEM specifically.

The ask is vendor-list registration, not a sale. Offer the first job at cost
as an audition. Under 150 words each. Subject lines under 8 words.

If you cannot find anything specific about a firm, say so rather than
inventing a detail. A generic email is better than a wrong one.
</instructions>
```

---

## D6. Objection rehearsal — before any call

```
Role-play as [the delivery head of a 30-person Indian patent search firm /
the regulatory affairs head of a medical device exporter]. You are sceptical.

I will pitch. Push back hard using the objections this buyer actually has:
existing vendor relationships, doubt about coverage completeness, price,
confidentiality with a solo vendor, "we already use Google Patents", "how do
we verify your search was thorough", "what happens if you miss something".

Stay in character. Do not go easy on me. After 8-10 exchanges, break
character and tell me which of my answers were weak and what a better answer
would have been.
```

Run this before every first call. It is the highest-leverage 20 minutes in the week.

---

## D7. Weekly funnel review — every Friday

```
Here is this week's funnel data:
[Paste: contacts sent, responses, meetings, jobs quoted, jobs won, revenue]
Cumulative: [totals]

Assess against the benchmark: 200 contacts -> ~40 responses -> ~15 onboarded
-> 5-8 first paid jobs.

Tell me:
1. Am I on, ahead of, or behind the funnel benchmark? Be specific.
2. Where is the drop-off worst, and what single variable should I change?
   One variable, not two.
3. What is my actual time split this week between outreach and delivery?
   If outreach is under 60%, say so bluntly.
4. Am I near any kill criterion?
5. The one thing to do differently next week.

Do not encourage me. Diagnose.
```

---

## D8. Standards landscape (T2+ product)

```
<task>
Build a Chinese standards landscape for a client product.
</task>

<product>
[Product description, intended use, target market segment in China]
</product>

<output>
1. Likely applicable standard FAMILIES with reasoning: GB (mandatory),
   GB/T (recommended), and industry series (YY medical, HG chemical,
   NY agriculture, QC automotive, etc.).
2. For each: what it governs, whether compliance is mandatory or voluntary,
   and how it interacts with NMPA/other regulatory approval if relevant.
3. Specific standard numbers where you are confident, marked [VERIFY].
4. A prioritised acquisition list — what to buy first and why.
5. Which items likely have superseded versions worth retrieving for
   prior-art or historical-compliance purposes.
</output>

<constraints>
Standard numbers from memory are UNRELIABLE. Mark every number [VERIFY] —
I will confirm each on the official Chinese standards platform before it
reaches a client. Never present an unverified standard number as fact.
Where you don't know, say "family likely relevant, specific number unknown".
</constraints>
```

---

## D9. Chinese literacy tutor — 15 min/day

```
Daily drill. I am learning to NAVIGATE Chinese patent and standards
documents, not to read Chinese. Target: ~300 structural and technical
characters.

Today:
1. Quiz me on 10 terms from previous sessions (I'll answer, you correct).
2. Teach 5 new terms from the patent/standards structural vocabulary
   (权利要求, 说明书, 实用新型, 公开日, 申请人 etc. — then move into
   mechanical/chemical technical vocabulary).
3. Give me one real snippet of a CNIPA document and have me identify the
   sections without translating.

Keep it to 15 minutes. Track what I keep getting wrong across sessions.
```

---

## D10. Post-job archive — after every sweep

```
Extract reusable assets from this completed job.

<job_record>
[Paste: domain, keyword set used, what worked, what the reviewer corrected,
which documents the English/MT search missed and why]
</job_record>

Produce an entry for keyword-library.md in the standard format. Be specific
about the translation failure modes — those are what make the next job in
this domain faster and better.
```

Run this every single time. Job #10 should take half the time of job #1, and this prompt is the only reason it will.

---

# SECTION E — PROMPTING NOTES FOR FABLE

A caveat first: there is no published, Fable-specific prompting guide I can point you to, and I would rather say that than invent tuning tips. What follows is sound practice for a highly capable model, plus the parts that matter specifically for *this* business.

**1. Give outcome and constraints, not step-by-step instructions.** Capable models degrade when micromanaged. Say what "good" looks like and what the failure modes are; let it find the route. The prompts above are written this way deliberately — note that D1 specifies *requirements* and *constraints*, not a procedure.

**2. Front-load context, put the instruction last.** Long context first (documents, background), the actual task at the end. This holds across models and matters more the longer your paste.

**3. Use tags.** `<task>`, `<constraints>`, `<output_format>` — the structure genuinely improves adherence and makes your prompts reusable as templates.

**4. Anti-fabrication is your single most important prompting habit.** In most businesses a hallucinated detail is embarrassing. In yours it is product failure — a wrong publication date in a prior-art deliverable can blow up a client's case. So: always demand verbatim quotes as evidence, always require `[VERIFY]` markers on dates/numbers/legal status, and always give explicit permission to say "I don't know." Models comply with this well when asked; they fill gaps confidently when not asked.

**5. Ask for the plan before the work on anything complex.** "Before you start, tell me how you'll approach this and what could go wrong." Then correct the plan. Cheaper than correcting the output.

**6. Ask it to argue against you.** "What's wrong with this plan? What am I missing? Where am I being optimistic?" This is how the plan you're holding got better across four sessions, and it's the habit most worth carrying over.

**7. Long context beats summarising.** Paste the whole document rather than your summary of it. Your summary is where information gets lost.

**8. On model switching:** you can change models mid-conversation. Anthropic has said Fable ships with safeguards that route some queries to Opus 5 instead — reportedly under 5% of sessions, tuned conservatively so harmless requests are sometimes caught. If a reply feels stylistically different, that may be why; it isn't a problem for your work.

**9. Don't over-trust either model on Chinese specifics.** Standard numbers, publication dates, terminology currency — all get verified against primary sources. The model is your triage and drafting layer, never your source of record.

---

# SECTION F — WEEK 1 SEQUENCE

Run these in order. Each is a separate conversation in the relevant project.

**Day 1 (Project 1)**
> "Here is my master brief and kill criteria [they're in project knowledge]. Before I start executing, argue against this plan. Give me the three strongest reasons it fails, and tell me what evidence in the first 30 days would confirm each. Be ruthless."

Then, offline: load the Alipay/WeChat wallet with ~¥500 and buy one CNKI journal article. Log every friction point.

**Day 2 (Project 1)**
> "Draft two emails: one to CNKI International and one to Wanfang, enquiring about India reseller/agent terms for a Hyderabad-based document procurement service. Professional, specific about the India market gap, asking for a commercial conversation. Under 200 words each."

Send both. This starts the moat clock.

**Day 3 (Project 1)**
> "Build me a target list structure and a research method for finding 120 Indian IP research firms of 5-50 people. Which search strings on LinkedIn and IndiaMART, which directories, which industry bodies. Then find and profile the first 15."

**Day 4 (Project 1)**
> Use **D5**. Send the first 5 outreach emails. Log them in `funnel.csv`.

**Day 5 (Project 2)**
> "I'm building a mock utility model sweep to test whether native-Chinese keyword searching finds documents that free English/MT search on Google Patents misses. Design the test so the result is unambiguous — including how I choose the target patent, how I record the English baseline, and what result would honestly mean the recall delta doesn't exist."

Then use **D1** on your chosen target.

**Day 6–7**
> Run the mock sweep. English baseline first, native search second. Recruit three reviewer candidates and pay each ₹1,500–2,000 to do the keyword validation and final read.

**Day 7 evening (Project 1)**
> Use **D7**. First weekly review.

---

## THE ONE THING

Everything in this pack is scaffolding for a single number: **25 outreach contacts per week, every week.** If that happens, the business has a chance. If it doesn't, no prompt, project, or plan in this document matters.

Week 3 gate: does the mock sweep show a real recall delta? Answer that honestly, and let the answer change the plan.
