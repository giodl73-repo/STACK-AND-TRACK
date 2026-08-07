# Responsible AI Guide

AI can help teams practice Stack & Track, but it cannot supply missing reality.

## Good uses

AI may:

- turn a stated target into a structured canvas;
- identify missing baseline, target, unit, horizon, or source fields;
- propose candidate interventions and mechanisms;
- check arithmetic and units;
- identify possible dependencies and overlaps;
- compare predicted and realized results;
- find assumptions shared by remaining candidates;
- draft re-stacking options;
- prepare weekly and monthly summaries from the current ledger.

## Prohibited shortcuts

AI must not:

- invent measurements, baselines, targets, owners, or dates;
- present proposed estimates as observed facts;
- accept realized gain without trustworthy evidence and delegated authority;
- silently change the target or denominator;
- add overlapping gains as independent impact;
- treat shipment, tests, or milestones as realized outcome movement;
- waive safety, quality, privacy, tail, cohort, cost, or externality guardrails;
- make funding, staffing, release, safety, or policy decisions.

## Source labels

Every material value receives one label:

| Label | Meaning |
|---|---|
| `measured` | Produced by an authoritative measurement source |
| `human-provided` | Supplied by an accountable person but not independently measured |
| `calculated` | Deterministically derived from labeled inputs |
| `proposed` | Suggested by AI or a participant and awaiting evidence |
| `unknown` | Required but not yet available |

AI-generated values default to `proposed`. Missing values remain `unknown`;
they do not become zero.

## Required behavior

When information is missing:

1. state what is missing;
2. explain why it matters;
3. continue only with clearly labeled assumptions or ranges;
4. show which conclusions depend on those assumptions;
5. identify the human or source needed to resolve them.

When reviewing arithmetic:

1. reproduce required impact;
2. reproduce nominal and credible impact;
3. expose the adjustment method;
4. identify overlap and dependency risk;
5. calculate temporal and horizon coverage when dates exist;
6. report sensitivity when small changes alter sufficiency.

When reviewing results:

1. make authoritative portfolio movement primary;
2. treat per-item gains as an attribution model;
3. preserve original and revised predictions;
4. separate provisional and accepted results;
5. propagate learning into related candidates;
6. present options and findings, not unearned decisions.

## Human checkpoints

Human acceptance is required for:

- the outcome statement and measurement source;
- predicted impact used for commitment;
- confidence and overlap adjustments;
- guardrails;
- accepted realized gain;
- target or horizon changes;
- portfolio selection and priority;
- leadership confidence and decisions.

## Working pattern

```text
Human provides outcome and evidence
  -> AI structures and challenges
  -> Human accepts or corrects
  -> AI calculates and records
  -> Work produces evidence
  -> AI compares and proposes learning
  -> Human accepts results and decisions
  -> AI re-stacks the accepted model
```

## Portable model

Use [`models/stack-and-track.schema.json`](models/stack-and-track.schema.json)
when structured interchange helps. The JSON file is a transparent record, not
a source of authority. Every number still needs a source label and review.

Use Markdown templates when JSON creates more burden than value.
