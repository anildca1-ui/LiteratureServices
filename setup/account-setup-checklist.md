# Section A — Account & Project Setup (do once)

## A1. Create TWO claude.ai projects, not one

Project memory and knowledge are scoped per project. Mixing client-confidential
search briefs with sales chatter is a hygiene failure you will regret when a
client asks about your data handling.

- [ ] **Project 1: `CN Desk — Sales & Ops`**
  - Outreach, funnel tracking, pricing, product sheets, supply-chain
    negotiation, learning
  - Never contains client briefs or client names beyond a contact list
  - Custom instructions: paste `project-1-sales-ops/instructions.md`
  - Knowledge: upload `project-1-sales-ops/knowledge/master-brief.md`,
    `kill-criteria.md`, `rate-card.md`

- [ ] **Project 2: `CN Desk — Delivery`**
  - Keyword engineering, triage, deliverable drafting
  - Contains the keyword library (the compounding asset)
  - Client briefs are **abstracted** before entry — see `prompts/d0-standing-rule.md`
  - Custom instructions: paste `project-2-delivery/instructions.md`
  - Knowledge: upload `project-2-delivery/knowledge/keyword-library.md`

## A2. Settings to enable

- [ ] **Web search** — on (used constantly for firm research and standards
      verification)
- [ ] **Memory / generate memory from chat history** — on, both projects
- [ ] **Search and reference past chats** — on
- [ ] **User preferences** — paste:

> Be direct and ruthless. No hedging, no over-optimism, no speculation
> presented as fact. If you don't know, say so. Flag when I'm avoiding hard
> work. Indian business context, INR, Hyderabad-based.

## A3. Files to have ready on your machine

| File | Status |
|---|---|
| `keyword-library.md` | ✅ seeded — `project-2-delivery/knowledge/keyword-library.md` |
| `funnel.csv` | ✅ seeded with 15 research targets — `project-1-sales-ops/funnel.csv` |
| `rate-card.pdf` | ✅ drafted as markdown — `project-1-sales-ops/knowledge/rate-card.md`; export to PDF after you approve the numbers |
| `sample-sweep.pdf` | ⏳ built in Week 3 from the mock sweep (`week-1/day-5-mock-sweep-design.md`) |
| `nda-template.docx` | ✅ drafted as markdown — `templates/nda-mutual-template.md`; have a lawyer review, then export to .docx |
| `data-handling-statement.md` | ✅ drafted — `templates/data-handling-statement.md` |
