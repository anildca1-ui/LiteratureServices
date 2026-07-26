# Runbook — how to execute the remaining manual steps

Step-by-step mechanics for the five things only you can do. Tick as you go.
UI labels drift; where a menu name doesn't match exactly, look for the
nearest equivalent.

---

## Step 1 — Create the two claude.ai projects (~15 min, do today)

1. [ ] Open claude.ai → left sidebar → **Projects** → **New project**.
       (Projects need a paid plan — Pro or above.)
2. [ ] Name it `CN Desk — Sales & Ops`.
3. [ ] In the project, open **Project instructions** (right-hand panel or
       "Set instructions") and paste everything **below the `---` line** in
       `project-1-sales-ops/instructions.md`. (Open the file on
       github.com → Raw → copy.)
4. [ ] In **Project knowledge** → add content/upload: `master-brief.md`,
       `kill-criteria.md`, `rate-card.md` (from
       `project-1-sales-ops/knowledge/`). Upload the .md files directly, or
       paste each as text content.
5. [ ] Repeat for `CN Desk — Delivery`: its `instructions.md` +
       `keyword-library.md`.
6. [ ] Settings (profile icon → **Settings**):
       - **Web search**: on
       - **Memory**: "Generate memories from chat history" on; "Search and
         reference chats" on
       - **Profile → preferences box**: paste the preferences text from
         `setup/account-setup-checklist.md` A2
7. [ ] Smoke test: in Project 1, start a chat with the Day 1 prompt from
       Section F ("argue against this plan…") and check the reply clearly
       uses the master brief. Compare it against
       `week-1/day-1-red-team.md` — keep whichever failure reasons are
       sharper.

## Step 2 — ¥500 wallet + one CNKI test purchase (~1–2 h incl. friction)

The point of this step is to *measure* friction, so a bumpy ride is data,
not failure. Log every snag in a note: card declines, KYC waits, caps,
fees, and above all whether you can get any receipt/invoice (发票) — the
invoice gap is the GST problem driving the month-4 supply deadline.

1. [ ] Install **Alipay** (international version). Register with your
       Indian mobile; complete KYC with passport. Bind an international
       Visa/Mastercard (enable international transactions on the card in
       your bank app first). WeChat Pay is the fallback — same card-binding
       idea, tends to be fussier.
2. [ ] Expect: small-transaction fees/caps on foreign cards and ~3–3.5%
       forex markup from your bank. Log the actual numbers.
3. [ ] Register a **CNKI individual account**: start from the
       [individual user service page](https://oversea.cnki.net/index/personal_service/en/index-en.html)
       on oversea.cnki.net.
4. [ ] Find one China Academic Journals article (any mechanical-engineering
       topic), go to pay-per-view checkout, pay by Alipay QR/balance.
5. [ ] Save: the PDF, the payment record screenshot, and whatever
       receipt CNKI offers. Note download limits and whether the account
       shows a top-up/balance option (充值) usable for future jobs.
6. [ ] Write the friction log into a new file `notes/wallet-friction-log.md`
       — it feeds the Day 90 / month-4 supply decision.

## Step 3 — Send the two supplier emails (~20 min, this starts the moat clock)

1. [ ] Decide the from-address. A clean personal Gmail works today;
       a ₹600–800/yr domain (e.g. `cndocdesk.in`) with free Zoho Mail looks
       more credible to suppliers and clients — optional, don't let it
       delay sending past this week. (An email domain is not "a website" —
       no discipline-list conflict.)
2. [ ] Open `week-1/day-2-supplier-emails.md`. Confirm the two addresses on
       the suppliers' own contact pages (links in the file), fill
       [NAME]/[EMAIL]/[PHONE].
3. [ ] Send both on a weekday morning **China time** (~9–11 am CST =
       6:30–8:30 am IST). Subject lines as drafted.
4. [ ] Log both in `funnel.csv`-style tracking with FU1 = +7 days,
       FU2 = +16 days; put both follow-ups in your calendar now.
5. [ ] Follow-ups reply to the same thread, 3 sentences max: restate the
       ask (commercial conversation about India agent terms), add one new
       fact (e.g. "I've since completed test purchases as a retail user"),
       ask again for the right contact.

## Step 4 — Named contacts via LinkedIn, then send batch 1 (~2 h)

For each of the five firms in `day-4-outreach-batch-1.md`:

1. [ ] LinkedIn → search the firm → **People** tab. Look for titles owning
       delivery/ops: Delivery Head/Manager, VP/Director Operations, Search
       Team Lead, or a founder at the smaller shops. Not HR, not sales.
2. [ ] Get the email: most Indian IP shops use `first.last@domain` or
       `firstname@domain`. Check the pattern against any address the firm
       publishes (e.g. Effectual's info@ confirms the domain), verify your
       guess with a free verifier (hunter.io / mailmeteor email verifier).
       If verification fails, use the firm's contact form addressed to the
       person by name — worse, but workable.
3. [ ] Do the 30-second site check on the personalised opening line
       (D5 rule: a generic email beats a wrong one — if the line doesn't
       hold, cut it back to the generic template).
4. [ ] Fill [CONTACT]/[NAME]/[PHONE], send Tue–Thu, 10:00–12:00 IST.
       Same-day: send the person a LinkedIn connection request with a
       one-line note ("Just emailed you about Chinese-language search
       coverage — happy to connect either way."). Two light touches, one day.
5. [ ] Log all five rows in `funnel.csv` (Sent date, FU1 +7d, FU2 +16d).
6. [ ] Any reply that books a call → run `prompts/d6-objection-rehearsal.md`
       in Project 1 **before** the call, with the firm's profile pasted in.
7. [ ] Cadence from next week: 5 sends/day × 5 days = the 25/week. The
       day-3 method section (§2) is how you keep the pipeline of Verified
       rows full; do one research block per week (~90 min).

## Step 5 — Run the mock sweep (2 half-days; the Week 3 gate)

Work through `day-5-target-and-keywords.md` §6 checklist. Mechanics:

1. [ ] **Fill the [VERIFY] rows** (2 min): open
       [US11174678B2 on Google Patents](https://patents.google.com/patent/US11174678B2/en),
       copy claim 1 verbatim into §3 of the file, note grant date, legal
       status and CPC codes into §1.
2. [ ] **Freeze**: adjust the five relevance criteria against claim 1 if
       needed, change DRAFT→FROZEN, add the date. After this, no edits.
3. [ ] **DeepSeek/Qwen pass** (15 min): paste §2's abstracted concept
       (it's generic — D0-compliant) into chat.deepseek.com and/or Qwen,
       ask: "List colloquial and workshop Chinese terms small manufacturers
       would use for this product and mechanism in utility model filings."
       Union new terms into §4 tables.
4. [ ] **English baseline — FIRST** (3 h, timer on): run §5's queries on
       Google Patents/Espacenet, log every query in a sheet
       (`time | db | query | filters | hits | shortlist adds | notes`),
       build the top-20 shortlist with the MT passage justifying each.
       Freeze the sheet (date it, duplicate it, don't touch the original).
       Full honest effort — a soft baseline poisons the demo you'll sell.
5. [ ] **CNIPA phase — SECOND** (3 h): register a free account on CNIPA's
       public patent search system (cponline.cnipa.gov.cn — the 专利检索
       service; the Chinese interface is where the native strings work).
       Run §4e strings against utility models (实用新型) first. Same
       logging. Shortlist top 20.
6. [ ] **Triage** in Project 2 with `prompts/d2-triage.md`, batches of 20,
       against the FROZEN criteria. Spot-check three quotes per batch.
7. [ ] **Score** per `day-5-mock-sweep-design.md` §4–5, including the
       back-translation check, and write the verdict down. Whatever it
       says, that's the Week 3 gate decision — delta real → build
       `sample-sweep.pdf`; delta absent → T3 dies per kill criteria.

## Step 6 — Recruit the three reviewers (parallel with Step 5, ~2–3 days lag)

1. [ ] Post the gig notice (in `day-6-7-reviewer-recruitment.md`) to:
       - **Upwork**: post a fixed-price job (~₹2,000 equivalent), filter
         applicants to native Chinese readers with technical/patent
         translation history; Malaysia/Singapore/Taiwan applicants avoid
         India–China payment friction (pay via the platform anyway for the
         audition).
       - **ProZ.com**: job posting, language pair zh→en, technical/patents.
       - **EFLU Hyderabad** (local — Chinese faculty/department office) and
         **JNU's Chinese studies centre**: short email with the notice, ask
         them to circulate to MA students/alumni.
2. [ ] Shortlist 3, send audition Task A (keyword union + planted dud) and
       Task B (top-5 read) from the mock sweep. Pay all three the agreed
       fee — auditions are paid, that's the deal that gets quality.
3. [ ] Score per the file's rubric, pick primary + backup, tell the third
       they're on the bench.
4. [ ] Payment: UPI for in-India; Wise/platform for overseas. Per-task
       reimbursement framing from day one (per master brief).

---

## Sequence for the next 7 calendar days

| Day | Do |
|---|---|
| Today | Step 1 (projects) + Step 3 (send supplier emails) |
| Tomorrow | Step 2 (wallet + test purchase); post reviewer gigs (Step 6.1) |
| Day 3 | Step 4 (LinkedIn contacts + send batch 1) |
| Day 4 | Step 5.1–5.4 (freeze + English baseline) |
| Day 5 | Step 5.5 (CNIPA phase); reviewer shortlist |
| Day 6 | Step 5.6–5.7 (triage + score); send auditions |
| Day 7 | D7 weekly review in Project 1 with real numbers; decide next week's one change |
