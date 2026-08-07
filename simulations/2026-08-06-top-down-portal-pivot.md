# Six-Month Simulation: Top-Down Portal Pivot

Date: 2026-08-06

## Disclosure

This deterministic synthetic simulation extends the six-month performance
scenario. One-third of the way through the horizon, leadership requires the
team to move the customer experience to a new portal technology while retaining
the 15-second performance target and original deadline.

It is not evidence about a real portal, organization, or technology.

Fixture:
[`data/top-down-portal-pivot-20260806.json`](data/top-down-portal-pivot-20260806.json)

Related simulation:
[`2026-08-06-six-month-station-rollout.md`](2026-08-06-six-month-station-rollout.md)

## Goal V1: original commitment

```text
Metric: population-weighted mean user-observed latency
Baseline: 20.0 seconds
Target: 15.0 seconds
Horizon: 26 weeks
Required reduction: 5.0 seconds
```

At the end of week 8:

```text
Accepted V1 reduction: 1.740 seconds
Accepted V1 latency: 18.260 seconds
```

The original plan is ahead of its week-8 required trajectory.

## Week 9 leadership directive

Leadership requires:

- the customer experience to move to Nova Portal;
- all six rollout stations to migrate by week 20;
- Nova Portal latency to reach 15.0 seconds by week 23;
- the original week-26 final confirmation date to remain;
- sign-in reliability, error rate, cost, and station outcomes not to regress.

This is both an acceptance-condition change and a technology constraint. Portal
migration is not itself the outcome. The performance target still must be
reached and sustained.

## The portal provides wins and regressions

The first representative benchmark compares Nova Portal with the week-8 Goal
V1 experience:

| Scenario | Population share | Portal change | Weighted global effect |
|---|---:|---:|---:|
| Browse and search | 35% | 1.8s faster | -0.630s |
| Read and detail views | 25% | 1.0s faster | -0.250s |
| Transactions and sign-in | 20% | 2.0s slower | +0.400s |
| Administrative workflows | 10% | 4.0s slower | +0.400s |
| Low-bandwidth and accessibility paths | 10% | 4.2s slower | +0.420s |
| **Net** | **100%** |  | **+0.340s regression** |

```text
Immediate weighted wins = 0.630 + 0.250 = 0.880 seconds
Immediate weighted regressions = 0.400 + 0.400 + 0.420 = 1.220 seconds
Net portal change = 1.220 - 0.880 = 0.340 seconds slower

Goal V1 current latency = 18.260 seconds
Goal V2 portal baseline = 18.260 + 0.340 = 18.600 seconds
```

The portal has valuable mechanisms, but its aggregate result is initially
slower and three scenarios violate guardrails. The team must preserve the wins
while repairing the regressions. It cannot offset a 4.2-second low-bandwidth
regression by making browse traffic faster.

## Goal change record

| Field | Goal V1 | Goal V2 |
|---|---|---|
| Effective period | weeks 0-8 | weeks 9-26 |
| Experience | existing portal | Nova Portal |
| Baseline | 20.0s | 18.6s measured portal baseline |
| Target | 15.0s | 15.0s |
| Required reduction | 5.0s | 3.6s |
| Denominator | all station populations | all station populations on Nova Portal |
| Adoption condition | none | 100% by week 20 |
| Performance checkpoint | week 26 | target first reached by week 23 |
| Confirmation | included in week 26 | weeks 24-26 |

Goal V1's accepted results remain in history. They are not rewritten as Goal V2
progress.

## Transfer audit

| Prior work | V1 accepted at week 8 | Portal classification | Goal V2 treatment |
|---|---:|---|---|
| Remove serial configuration lookup | 1.250s | transferable | Included in the measured portal baseline |
| Reduce response payload and parsing | 0.455s | partial transfer; renderer assumptions changed | Rebenchmark rather than inherit attribution |
| Reuse warm service connections | 0.035s | revalidation required under portal traffic | Retain as a hypothesis |
| Regional projection cache | 0.000s | stranded; old portal integration only | Stop |
| **Total** | **1.740s historical V1 gain** |  | **No separate V2 accepted credit** |

The measured `18.600s` portal baseline already includes whatever prior
mechanisms transfer. Adding old gains again would double count them. Goal V1
keeps its accepted history; Goal V2 starts from the measured portal state.

## First V2 stack: insufficient

The portal baseline creates a `3.6s` required reduction. Repairing the three
regressed scenarios is mandatory even if other wins could improve the global
average.

| Source | Confidence-adjusted impact |
|---|---:|
| Repair transaction and sign-in regression | 0.320s |
| Repair administrative workflow regression | 0.280s |
| Repair low-bandwidth and accessibility regression | 0.273s |
| Revalidated shared backend improvements | 0.400s |
| Portal server rendering | 0.720s |
| Shared portal data contract | 0.450s |
| Asset loading and preload policy | 0.280s |
| Simplify portal route composition | 0.390s |
| Edge caching | 0.300s |
| Estimated overlap and migration deduction | -0.350s |
| **Credible V2 impact** | **3.063s** |

```text
Initial V2 Stack Coverage Ratio = 3.063 / 3.6 = 0.85x
```

The team reports **low confidence**. It does not keep the old green status or
pretend the new mandate fits for free.

## Leadership resolution

Leadership chooses to preserve the outcome, technology requirement, guardrails,
and date. It therefore:

1. assigns a dedicated portal integration team rather than splitting the
   existing performance team invisibly;
2. names one product owner for the minimum accepted portal scope;
3. stops the legacy-only cache work;
4. funds a three-day architecture and measurement spike;
5. limits active rollout work to two packages;
6. requires an explicit week-13 go/no-go checkpoint.

The spike identifies two additional mechanisms:

| Candidate | Predicted gain | Confidence | Confidence-adjusted impact |
|---|---:|---:|---:|
| Remove duplicate portal boot handshake | 0.55s | 70% | 0.385s |
| Defer non-required synchronous enrichment | 0.65s | 75% | 0.488s |

```text
Revised credible V2 impact =
  3.063 + 0.385 + 0.488
  = 3.936 seconds

Revised Stack Coverage Ratio =
  3.936 / 3.6
  = 1.09x
```

The revised plan is **covered but fragile**. Nominal opportunity is `5.92s`, or
`1.64x`, but time and integration constraints make a 2x credible stack
unavailable. Leadership accepts medium confidence with named contingency rather
than demanding fictional arithmetic.

## Revised temporal plan

| Week | Required V2 reduction | Planned evidence or accepted state |
|---:|---:|---|
| 9 | 0.0s | Goal V2 accepted; V1 history frozen |
| 10 | 0.0s | Portal baseline and transfer benchmarks |
| 11 | 0.0s | Initial 0.85x stack rejected |
| 12 | 0.0s | Expanded stack and integration package tested |
| 13 | 0.1s | First production station |
| 17 | 0.4s | Hotfixed rollout reaches 18% population |
| 20 | 2.6s | Portal reaches 100% population |
| 23 | 3.6s | Performance package reaches full population |
| 26 | 3.6s confirmed | Long-window confirmation |

The plan contains two separate completion tests:

1. portal migration reaches 100%;
2. portal performance reaches and sustains 15.0 seconds.

## Portal rollout and integration regression

The first portal package contains `2.45s` of accepted full-population gain:

```text
Repair the three regressed scenarios: 1.22s
Portal server rendering: 0.75s
Revalidated shared backend improvements: 0.48s
Total package A: 2.45s
```

Rollout starts in week 13:

| Week | Portal adoption | Event | Accepted V2 reduction |
|---:|---:|---|---:|
| 13 | 3% | Oceania passes | 0.074s |
| 14 | 10% | Africa and Middle East pass | 0.245s |
| 15 | 18% attempted | Latin America exposes a remaining sign-in regression; freeze and rollback to 10% | 0.245s |
| 16 | 10% | Authentication hotfix built and tested | 0.245s |
| 17 | 18% | Latin America passes hotfix | 0.441s |
| 18 | 35% | Asia-Pacific passes | 0.858s |
| 19 | 62% | Europe passes | 1.519s |
| 20 | 100% | United States passes; migration complete | 2.450s |

The Latin America regression adds `1.5s` to sign-in latency for that station.
At 8% population it changes the global number by only `0.120s`, but the station
guardrail freezes rollout before Asia-Pacific, Europe, and the United States.

The hotfix repeats the affected rollout gate. It consumes two weeks of temporal
reserve but prevents a wider release.

## Migration completion is not outcome completion

At week 20, Nova Portal is deployed to everyone:

```text
Portal adoption: 100%
Accepted V2 reduction from package A: 2.45s
Portal latency before package B's partial gain: 16.15s
```

Leadership cannot declare success. The technology objective is complete, but
the 15-second outcome is not.

Package B contains:

```text
Shared portal data contract: 0.50s realized
Asset loading and preload policy: 0.30s realized
Simplified portal route composition: 0.50s realized
Total package B: 1.30s
```

It enters the same six-station rollout in week 18:

| Week | Package B exposure | Package B accepted gain | Total accepted V2 reduction | Portal latency |
|---:|---:|---:|---:|---:|
| 18 | 3% | 0.039s | 0.897s | 17.704s |
| 19 | 10% | 0.130s | 1.649s | 16.951s |
| 20 | 18% | 0.234s | 2.684s | 15.916s |
| 21 | 35% | 0.455s | 2.905s | 15.695s |
| 22 | 62% | 0.806s | 3.256s | 15.344s |
| 23 | 100% | 1.300s | 3.750s | 14.850s |

The target is first reached in week 23. Weeks 24 through 26 confirm persistence,
station guardrails, cost, and attribution.

## Leadership confidence through the pivot

| Week | Confidence | Reason |
|---:|---|---|
| 8 | medium, increasing on Goal V1 | Accepted progress is ahead of the original curve |
| 9 | low on Goal V2 | New baseline, transferability, stack, and capacity are unknown |
| 11 | low | Initial revised stack covers only 0.85x |
| 13 | medium | Leadership resolves capacity and ownership; first station evidence arrives |
| 15 | medium, decreasing | Integration regression consumes temporal reserve |
| 20 | medium | Migration is complete, but performance remains above target |
| 23 | medium, increasing | 14.85s is reached; confirmation remains |
| 26 | high | Outcome, migration, and guardrails are confirmed |

Confidence resets when the goal changes. Historical success improves the quality
of the transfer hypotheses, but it does not preserve the previous confidence
rating automatically.

## What changed in the portfolio

| Prior item or plan | Decision after pivot | Reason |
|---|---|---|
| Shared backend improvements | revalidate and carry forward | Mechanisms survive the portal boundary |
| Renderer-specific payload work | revise estimate | New renderer changes the bottleneck |
| Legacy projection cache | stop | Stranded on the superseded portal |
| Original rollout schedule | retire | New integration and migration clocks control impact |
| Unused performance candidates | retain as options | Fragile 1.09x credible coverage needs contingency |
| Portal migration tasks | track as prerequisites | Necessary work is not automatically latency gain |

## Lessons

### A changed technology can create mixed effects

The portal immediately improves browse and read paths by `0.880s` weighted, but
regresses transaction, administration, and low-bandwidth paths by `1.220s`.
The net baseline is `18.600s`, yet the scenario regressions remain mandatory
work even if the aggregate later reaches 15 seconds.

### Accepted history and transferable forecast are different

Goal V1 retains `1.740s` of accepted progress. Goal V2 uses a freshly measured
baseline that already includes transferred mechanisms, preventing old gains
from being counted twice.

### The old green status expires

The first V2 stack covers only `0.85x`. The method forces a leadership decision
before the team recommits.

### Leadership must trade something

Keeping the portal, target, date, and guardrails requires explicit capacity,
scope ownership, stopped legacy work, and a fragile-risk acceptance. A top-down
directive does not create free capacity.

### Migration and outcome are separate curves

Nova Portal reaches 100% adoption in week 20 but does not reach 15 seconds until
week 23.

### Top-down change increases regression risk

New integration assumptions create a sign-in regression. Station gates and
hotfix reserve remain necessary even when schedule pressure comes from
leadership.

## Final disposition

```text
Goal V1 accepted progress at change: 1.740s
Goal V2 portal baseline: 18.60s
Goal V2 target: 15.00s
Portal migration complete: week 20
Target first reached: week 23
Final confirmed latency: 14.85s
Final accepted V2 reduction: 3.75s
Final confirmation: week 26
```

The pivot succeeds because the original goal is versioned, transferability is
audited, insufficient coverage is reported honestly, leadership resolves the
capacity gap, stranded work stops, migration remains separate from performance,
and the integration regression does not weaken rollout safeguards.
