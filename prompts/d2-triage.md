# D2. Triage — batches of 20 hits

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

The verbatim-quote requirement is your anti-hallucination discipline.
Spot-check three quotes against source every job.
