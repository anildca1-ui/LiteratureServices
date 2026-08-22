# CLAUDE.md — project context for Claude Code sessions

## What this repo is

The operating system for **CN Document Desk**: a one-person Chinese
technical-document *procurement and verification* business run from
Hyderabad, India. Not a translation service; not a software project. The
repo is markdown + CSV: strategy, claude.ai project setups, a prompt
library, sales funnel, and Week 1 execution artifacts.

Read `README.md` for the repo map, then `week-1/runbook.md` for what is
currently in flight. The original strategy pack is `master-plan.md`
(verbatim; do not edit — edit the broken-out files instead).

## Non-negotiable working rules (from the master plan)

1. **Never fabricate** a citation, date, legal status, price, standard
   number, contact name, or bibliographic field. Mark anything unverified
   as `[VERIFY]`. This business sells verified provenance; a fabricated
   detail is product failure.
2. **Abstraction rule (D0)**: client briefs are abstracted before any AI
   processing — technical concept only, never client names, matter names,
   or litigation posture. Nothing client-derived goes to Chinese-hosted
   AI tools.
3. **Legitimate supply only** — no circumvention of CNKI overseas
   restrictions, no grey channels.
4. Don't produce more strategy analysis without new market evidence; push
   toward outreach execution instead. The metric that matters:
   **25 outreach contacts/week**.
5. Kill criteria live in `project-1-sales-ops/knowledge/kill-criteria.md`
   — surface them when evidence touches one.

## Current status (update this section as work progresses)

- Repo built and verified through Week 1 prep; branch:
  `claude/execute-shared-conversation-35kxhc`.
- Supplier emails drafted **with real addresses** (`week-1/day-2-…`) —
  not yet sent by the operator.
- Outreach batch 1 drafted (`week-1/day-4-…`) — needs named contacts
  from LinkedIn, then sending.
- Mock sweep: target chosen (US11174678B2) and D1 keyword set generated
  (`week-1/day-5-target-and-keywords.md`); claim 1 paste + freeze +
  the actual searches are pending. This is the **Week 3 gate** for T3.
- Funnel seeded with 24 live targets + 1 dead (`project-1-sales-ops/funnel.csv`),
  now including List B (agrochem exporters + regulatory-consultancy
  multipliers; see `outreach/list-b-targets.md`).
- Outreach batch 2 (List A, week 2) drafted: `outreach/batch-2.md`.
- Operator's pending actions: create the two claude.ai projects; send the
  two supplier emails; LinkedIn contacts for batch 1; wallet test purchase.

## Environment notes

- `environment/setup.sh` is for **Claude Code cloud containers only**
  (Ubuntu; encodes proxy workarounds). Do not run it on Windows/macOS.
- On a local machine nothing needs installing to work on this repo —
  it is text. Web search access helps (firm verification, standards
  checks).
