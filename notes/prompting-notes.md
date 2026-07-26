# Section E — Prompting notes for Fable (read once, apply always)

A caveat first: there is no published, Fable-specific prompting guide, and
it is better to say that than to invent tuning tips. What follows is sound
practice for a highly capable model, plus the parts that matter specifically
for *this* business.

**1. Give outcome and constraints, not step-by-step instructions.** Capable
models degrade when micromanaged. Say what "good" looks like and what the
failure modes are; let it find the route. The library prompts are written
this way deliberately — note that D1 specifies *requirements* and
*constraints*, not a procedure.

**2. Front-load context, put the instruction last.** Long context first
(documents, background), the actual task at the end. This holds across
models and matters more the longer your paste.

**3. Use tags.** `<task>`, `<constraints>`, `<output_format>` — the
structure genuinely improves adherence and makes your prompts reusable as
templates.

**4. Anti-fabrication is your single most important prompting habit.** In
most businesses a hallucinated detail is embarrassing. In yours it is
product failure — a wrong publication date in a prior-art deliverable can
blow up a client's case. So: always demand verbatim quotes as evidence,
always require `[VERIFY]` markers on dates/numbers/legal status, and always
give explicit permission to say "I don't know." Models comply with this well
when asked; they fill gaps confidently when not asked.

**5. Ask for the plan before the work on anything complex.** "Before you
start, tell me how you'll approach this and what could go wrong." Then
correct the plan. Cheaper than correcting the output.

**6. Ask it to argue against you.** "What's wrong with this plan? What am I
missing? Where am I being optimistic?" This is how the plan got better
across four sessions, and it's the habit most worth carrying over.

**7. Long context beats summarising.** Paste the whole document rather than
your summary of it. Your summary is where information gets lost.

**8. On model switching:** you can change models mid-conversation. If a
reply feels stylistically different mid-thread, safety routing between
models can be the reason; it isn't a problem for this work.

**9. Don't over-trust any model on Chinese specifics.** Standard numbers,
publication dates, terminology currency — all get verified against primary
sources. The model is your triage and drafting layer, never your source of
record.
