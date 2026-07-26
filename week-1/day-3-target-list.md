# Day 3 — Target list: structure, research method, first 15 firms

Executed per the Day 3 instruction. The seed list below is also loaded into
`../project-1-sales-ops/funnel.csv`.

## 1. List structure

One row per firm in `funnel.csv`:
`Date | List (A/B/C) | Firm | Contact name | Role | Email | Source | Sent |
FU1 date | FU2 date | Status | Notes`

Status values: `Research → Verified → Sent → Responded → Meeting →
Registered → Quoted → Won / Dead`. A firm is **Verified** only when you have
(a) confirmed it does patent search/analytics as a service, (b) estimated
headcount 5–50, (c) a named contact with role and email. Only Verified rows
count toward the 25/week send quota.

## 2. Research method — finding 120 List A firms

**LinkedIn (primary).** Search *companies*, not people, then confirm via
people:
- Company search: "patent search", "patent analytics", "prior art",
  "IP research" — filter Company size 11–50, location India
- People search: title "patent analyst" OR "prior art" OR "patent research",
  location Gurgaon/Noida/Bangalore/Pune/Chennai/Hyderabad — then cluster by
  employer; small employers appearing repeatedly are exactly the long tail
- The delivery head / VP Operations / founder is the outreach contact, not
  HR or sales

**Directories and marketplaces.**
- IndiaMART: categories "patent services", "patent search services" — the
  long tail lists here; quality varies, verify each
- Justdial/Sulekha for city-wise "patent services" (noisy, but surfaces
  unbranded shops)
- Clutch.co and GoodFirms: "intellectual property" services, India filter

**Rankings and bodies (for the branded end and multipliers).**
- IAM Patent 1000 and MIP rankings — India sections list the top firms;
  useful mainly to identify who is a *competitor* vs customer
- CII/FICCI IP committees, APAA/AIPPI India membership — multiplier
  contacts, List C

**Verification layer.** Before a row is Verified: firm website (services
page — do they sell search, or are they attorneys who file?), LinkedIn
employee count, and for size sanity Tofler/Zauba MCA lookups where the firm
is a registered company.

**Disqualifiers:** in-house Chinese search capability (competitor — e.g.
Sagacious, Evalueserve, GreyB), pure filing/prosecution law firms with no
research arm (List C multiplier at best), sub-5-person freelancer fronts.

## 3. First 15 — seed list

Sources: master brief (named firms) + web search July 2026 (linked below).
**Every headcount, contact and service claim is [VERIFY] until you have
checked the firm's site and LinkedIn yourself — do not send outreach off
this table as-is.**

| # | Firm | City | List | Why on the list | Fit risk to check |
|---|---|---|---|---|---|
| 1 | Copperpod IP | Gurgaon [VERIFY] | A | Named in brief: ~41 staff, ECE/EE litigation support — profile matches T3 exactly | May have CN freelancer network already |
| 2 | iRunway | Bangalore | A | Named in brief; litigation-support research | Size may exceed 50; check current state |
| 3 | Dolcera | Hyderabad | A | Named in brief; local — in-person meeting possible | Check if their analytics platform includes CN coverage |
| 4 | Effectual Services | Noida | A | Named in brief | Larger side; find the right delivery head |
| 5 | Inrea Research | Mumbai | A | Patent research/analytics for F500, SMEs, law firms | Verify headcount band |
| 6 | Metacog Patent Research Solutions | [VERIFY] | A | Dedicated prior-art/novelty search shop | Verify size, seniority of buyer |
| 7 | IPExcel | Bangalore [VERIFY] | A | Novelty/invalidity/FTO/landscape services | Verify research team size |
| 8 | IPMetrix | Bangalore/Chennai | A | Search, landscape, FTO services | Verify size |
| 9 | PatentOne | [VERIFY] | A | Search/analytics for startups and SMEs | May be too small/price-sensitive |
| 10 | Company360 | [VERIFY] | A | Validity/invalidity + NPL search services | Verify it's a service firm, not a data tool |
| 11 | Videaim IP | Gurgaon | A | Techno-legal firm, offices in Gurgaon/Bangalore/Faridabad | Attorney-led? Check research headcount |
| 12 | Menteso IP | [VERIFY] | A | Active in prior-art content/marketing | Verify actual service depth |
| 13 | BananaIP Counsels | Bangalore | C | Law firm with a search & analytics arm | Customer for overflow, or multiplier |
| 14 | Origiin IP Solutions | Bangalore | C | IP services firm | Likely multiplier, not search buyer |
| 15 | Define IPR Solutions | [VERIFY] | C | Named referral multiplier in brief (Rajesh Panigrahi) | Warm channel — contact first, ask for intros |

**Explicit competitor exclusions (do not pitch):** Sagacious IP,
Evalueserve, GreyB — in-house Chinese capability per brief/site claims.

Web sources used: [YourStory: Top 10 patent search services in India](https://yourstory.com/mystory/top-10-patent-search-services-in-india),
[Inrea Research](https://www.indiamart.com/inrea-research/),
[Metacog](https://www.metacogip.com/services/prior-art-search/),
[IPExcel](https://ipexcel.com/in/patent-analytics.html),
[IPMetrix](https://ipmetrix.com/), [PatentOne](https://www.patentone.in/),
[Company360](https://company360.in/patent-analytics/),
[Videaim IP](https://www.videaimip.com/index.html),
[BananaIP](https://www.bananaip.com/services/patents/patent-search-analytics),
[Origiin](https://origiin.com/), [Menteso](https://menteso.com/blog/top-10-prior-art-search-firms/).

## 4. Next 105

Work the method in §2 in weekly blocks of ~25: one LinkedIn people-cluster
session (Gurgaon/Noida week 1, Bangalore week 2, Pune/Chennai week 3,
Hyderabad + rest week 4), one IndiaMART sweep per week, verify as you go.
Do not stockpile unverified names — 25 Verified rows a week feeding sends is
the target, per THE ONE THING.
