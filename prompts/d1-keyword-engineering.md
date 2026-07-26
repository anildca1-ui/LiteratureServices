# D1. Keyword engineering — run at the start of every T3 sweep

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

Then run the same `<technical_concept>` and `<domain>` through DeepSeek or
Qwen with a short prompt asking for colloquial Chinese terms. Union the two
lists. Send the union to your reviewer for validation — that's their 15
minutes.
