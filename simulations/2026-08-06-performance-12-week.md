# Twelve-Week Performance Simulation

Date: 2026-08-06

## Disclosure

This is a deterministic synthetic simulation. Candidate technical potentials
were generated with pseudo-random seed `20260806`. Scenario shocks, guardrail
behavior, measurements, and decisions are illustrative.

The simulation is not evidence about a real system.

Fixture:
[`data/performance-12-week-seed-20260806.json`](data/performance-12-week-seed-20260806.json)

Daily ledger:
[`2026-08-06-performance-12-week-daily.md`](2026-08-06-performance-12-week-daily.md)

## Outcome

```text
Metric: p95 request latency
Baseline: 10.0 seconds
Target: 8.0 seconds
Required reduction: 2.0 seconds
Horizon: 12 weeks
Measurement: comparable production telemetry windows
```

Guardrails:

- p99 latency does not materially worsen;
- error rate does not increase;
- cost per request increases by no more than 5%;
- no major customer cohort regresses.

## Initial portfolio

| ID | Candidate | Predicted reduction | Confidence | Confidence-adjusted impact | Planned acceptance |
|---|---|---:|---:|---:|---:|
| P-01 | Remove serial metadata lookup | 0.9s | 85% | 0.765s | week 3 |
| P-02 | Parallelize downstream calls | 0.8s | 70% | 0.560s | week 5 |
| P-03 | Reduce parsing and allocation | 0.6s | 80% | 0.480s | week 6 |
| P-04 | Precompute projection | 0.7s | 65% | 0.455s | week 8 |
| P-05 | Tune connection reuse and pooling | 0.5s | 60% | 0.300s | week 11 |
| P-06 | Reduce redundant query work | 0.4s | 60% | 0.240s | week 11 |
| P-07 | Alternative response path | 0.4s | 50% | 0.200s | week 12 |

```text
Nominal impact = 4.3 seconds
Nominal coverage = 4.3 / 2.0 = 2.15x
Confidence-adjusted impact = 3.0 seconds
Estimated portfolio overlap = 0.4 seconds
Credible planned impact = 2.6 seconds
Initial Stack Coverage Ratio = 2.6 / 2.0 = 1.30x
```

The stack is sufficient but not safe to execute all at once. The initial
selected portfolio is P-01 through P-04. P-05 is contingency. P-06 and P-07
remain visible but unstarted.

## Target curve

The team accepts an S-shaped cumulative reduction trajectory:

| Week | Required accepted reduction |
|---:|---:|
| 0 | 0.0s |
| 2 | 0.2s |
| 4 | 0.6s |
| 6 | 1.1s |
| 8 | 1.5s |
| 10 | 1.8s |
| 12 | 2.0s |

## Seeded technical potentials

The simulation engine generated these hidden values:

| ID | Predicted | Seeded technical potential | Raw variance |
|---|---:|---:|---:|
| P-01 | 0.900s | 0.776s | -0.124s |
| P-02 | 0.800s | 0.986s | +0.186s |
| P-03 | 0.600s | 0.834s | +0.234s |
| P-04 | 0.700s | 0.752s | +0.052s |
| P-05 | 0.500s | 0.750s | +0.250s |
| P-06 | 0.400s | 0.287s | -0.113s |
| P-07 | 0.400s | 0.177s | -0.223s |

The simulated team does not know unexecuted values. A random draw is technical
potential, not automatically accepted gain. Dependencies, overlap, exposure,
measurement, and guardrails still apply.

## Weekly simulation

### Week 1: Baseline and launch

Actions:

- measurement-quality review passes;
- P-01 enters build;
- P-02 enters a concurrency experiment;
- P-03 profiling begins;
- P-04 remains structural-later.

Accepted reduction: `0.000s`

Learning: The team confirms that p95, p99, errors, cost, and cohort metrics can
be compared across the planned windows.

### Week 2: First provisional result

P-01 produces a provisional `0.776s` reduction. Cache validation adds more cost
than predicted, explaining the negative raw variance.

Decision:

- keep the result provisional through confirmation;
- reduce similar cache-based estimates;
- leave P-01 acceptance forecast at `0.76-0.78s`.

Accepted reduction: `0.000s`

Substantive update: A result exists, but the accepted curve does not move yet.

### Week 3: P-01 accepted

P-01 confirms at `0.776s` with healthy guardrails.

```text
Current p95 = 10.000 - 0.776 = 9.224 seconds
Outstanding reduction = 1.224 seconds
```

Accepted reduction: `0.776s`

Learning propagation:

- lower confidence in other cache-dependent work;
- confirm that removing serial critical-path work produces direct gain;
- preserve original `0.900s` prediction for calibration.

### Week 4: First leadership checkpoint

P-02 ships. P-03 enters testing.

| Confidence dimension | State | Reason |
|---|---|---|
| Outcome movement | high | Accepted progress is above the 0.6s week-4 requirement |
| Portfolio sufficiency | high | Remaining credible impact exceeds the 1.224s outstanding target |
| Forecast quality | medium | Only one prediction has completed confirmation |
| Learning responsiveness | high | P-01 learning changed related estimates within one week |
| Governance and guardrails | high | No breach; decisions are current |

Overall confidence: **medium, increasing**. The target is plausible, but one
accepted result is not enough to call forecasting calibrated.

### Week 5: Shared dependency miss

P-02's seeded technical potential is `0.986s`, but additional concurrency
creates downstream contention. The scenario applies a `0.45` multiplier:

```text
0.986 x 0.45 = 0.444 seconds
```

P-02 confirms at `0.444s`.

```text
Accepted cumulative reduction = 0.776 + 0.444 = 1.220 seconds
Current p95 = 8.780 seconds
Outstanding reduction = 0.780 seconds
```

Variance from prediction:

```text
0.444 - 0.800 = -0.356 seconds
```

Reaction:

- lower confidence in concurrency-dependent candidates;
- increase P-05 priority because pooling may relieve the discovered constraint;
- require downstream capacity evidence before further parallelization;
- revise overlap assumptions.

This is a useful miss: it reduces outcome uncertainty and identifies a
constraint while there is still time to act.

### Week 6: Positive result with overlap

P-03 has seeded potential of `0.834s`. Analysis finds `0.150s` overlaps P-01
because both moved the critical path:

```text
Proposed attributed gain = 0.834 - 0.150 = 0.684 seconds
```

P-03 confirms at `0.684s`.

```text
Accepted cumulative reduction = 1.220 + 0.684 = 1.904 seconds
Current p95 = 8.096 seconds
Outstanding reduction = 0.096 seconds
```

Required week-6 reduction is `1.1s`; accepted progress is well ahead.

Reaction:

- reduce expected opportunity in later CPU-only work;
- do not add the positive raw variance and overlap separately;
- shrink the next rollout because only `0.096s` remains necessary;
- keep contingency available until confirmation.

### Week 7: Re-stack for a nearly reached target

The original plan would ship all of P-04. The re-stack instead authorizes a
bounded canary.

```text
Outstanding impact = 0.096 seconds
Remaining time = 5 weeks
Required remaining average rate = 0.0192 seconds per week
```

Decision:

- limit P-04 exposure;
- prepare P-05 as contingency;
- do not start P-06 or P-07;
- preserve guardrails despite being close to target.

This avoids treating the original roadmap as mandatory after the outcome
changes.

### Week 8: Primary metric improves, guardrail fails

P-04's canary shows `0.752s` provisional p95 improvement, but error rate rises
by 1.2 percentage points.

Disposition:

- reject P-04 as accepted gain;
- roll back the canary;
- record a guardrail finding;
- retire the current P-04 design;
- activate bounded P-05 contingency.

Accepted cumulative reduction remains `1.904s`.

Second leadership checkpoint:

| Confidence dimension | State | Reason |
|---|---|---|
| Outcome movement | high | Only 0.096s remains |
| Portfolio sufficiency | high | P-05 and unused alternatives exceed the remaining target |
| Forecast quality | medium | P-02 missed and P-04 failed a guardrail |
| Learning responsiveness | high | Both misses changed priority and exposure promptly |
| Governance and guardrails | high | The apparent gain was rejected and rolled back |

Overall confidence: **medium, stable**. The numerical target is close, but the
process earns confidence by rejecting unsafe impact rather than reporting green.

### Week 9: Contingency ships

P-05 ships with a bounded configuration informed by P-02's contention result.

The seeded technical potential is `0.750s`, but the bounded rollout deliberately
uses a `0.50` exposure multiplier:

```text
Provisional potential = 0.750 x 0.50 = 0.375 seconds
```

Accepted cumulative reduction remains `1.904s`.

### Week 10: P-05 provisional

P-05 measures `0.375s` provisional improvement with healthy error, p99, cost,
and cohort guardrails.

```text
Provisional portfolio reduction = 1.904 + 0.375 = 2.279 seconds
Provisional p95 = 7.721 seconds
```

Decision:

- do not declare the target reached;
- continue the confirmation window;
- keep P-06 and P-07 unstarted;
- prepare to reconcile item attribution to the long-window portfolio measure.

### Week 11: Target accepted provisionally

P-05 confirms at `0.360s`.

```text
Accepted item-attribution total =
  0.776 + 0.444 + 0.684 + 0.360
  = 2.264 seconds
```

The short-window portfolio measure is consistent with approximately `7.74s`
p95. The target is reached, pending final horizon confirmation.

Decision:

- retire P-06 from the current target;
- retain P-07 only as future contingency;
- stop adding work;
- measure persistence through week 12.

### Week 12: Portfolio reconciliation and confirmation

The full confirmation window measures p95 at `7.78s`:

```text
Authoritative accepted portfolio reduction = 10.00 - 7.78 = 2.22 seconds
```

The earlier item-attribution total was `2.264s`, exceeding the authoritative
portfolio movement by `0.044s`. The team reconciles the attribution model:

| ID | Week-11 attribution | Final attribution |
|---|---:|---:|
| P-01 | 0.776s | 0.760s |
| P-02 | 0.444s | 0.430s |
| P-03 | 0.684s | 0.670s |
| P-05 | 0.360s | 0.360s |
| **Total** | **2.264s** | **2.220s** |

P-04 remains zero because its primary-metric gain violated the error guardrail.
P-06 and P-07 have no realized value because they were never executed.

Final state:

```text
Baseline: 10.00 seconds
Target: 8.00 seconds
Accepted: 7.78 seconds
Accepted reduction: 2.22 seconds
Target surplus: 0.22 seconds
```

Third leadership checkpoint:

| Confidence dimension | State | Reason |
|---|---|---|
| Outcome movement | high | Target is reached and confirmed |
| Portfolio sufficiency | high | Accepted movement exceeds the target; unused alternatives remain |
| Forecast quality | medium | Direction was correct, but intervention estimates had material variance and overlap |
| Learning responsiveness | high | P-02, P-03, P-04, and P-05 all changed the model |
| Governance and guardrails | high | Unsafe gain was rejected; unused work was stopped |

Overall confidence: **high**, with a forecast-calibration action for the next
portfolio.

## Curve summary

| Week | Required reduction | Forecast or provisional signal | Accepted reduction | Temporal status |
|---:|---:|---:|---:|---|
| 0 | 0.0s | 0.0s | 0.000s | baseline |
| 2 | 0.2s | 0.776s provisional | 0.000s | evidence ahead, acceptance pending |
| 4 | 0.6s | P-02 shipped | 0.776s | accepted ahead |
| 6 | 1.1s | P-03 confirmed | 1.904s | materially ahead |
| 8 | 1.5s | P-04 rejected | 1.904s | ahead, guardrail risk controlled |
| 10 | 1.8s | 2.279s provisional | 1.904s | accepted ahead, confirmation pending |
| 12 | 2.0s | 2.220s confirmed | 2.220s | target reached |

## Learning ledger

| Event | Learning | Portfolio change |
|---|---|---|
| P-01 lower than predicted | Validation overhead matters | Lower similar cache estimates |
| P-02 contention miss | Parallelism is constrained downstream | Raise P-05 priority; require capacity evidence |
| P-03 positive result with overlap | Bottleneck moved after P-01 | Reduce later CPU opportunity |
| P-04 guardrail breach | Primary metric alone is insufficient | Reject gain, roll back, retire design |
| P-05 bounded success | Contingency informed by prior miss can close the target safely | Stop P-06 and P-07 |
| Week-12 reconciliation | Item attributions drift from long-window portfolio movement | Reconcile to authoritative total and calibrate forecasts |

## Forecast calibration

Executed candidates had original predicted impact:

```text
P-01 + P-02 + P-03 + P-04 + P-05
= 0.9 + 0.8 + 0.6 + 0.7 + 0.5
= 3.5 seconds
```

Accepted portfolio impact was `2.22s`, or 63% of the executed nominal
prediction. The difference came from:

- technical underperformance;
- shared dependency effects;
- overlap;
- bounded exposure;
- guardrail rejection;
- longer-window reconciliation.

The next performance stack should:

1. lower default confidence for coupled critical-path changes;
2. model contention before parallelization;
3. reserve explicit overlap for bottleneck movement;
4. treat guardrail-failure probability as part of credible impact;
5. retain surplus candidates without starting them prematurely.

## Scenario lessons

### Positive variance

Positive technical potential does not always become accepted gain. P-03
outperformed before overlap; P-04 improved p95 but failed a guardrail.

### Negative variance

P-02's negative accepted variance produced valuable system learning and made
P-05 more effective.

### Contingency

P-05 was not generic spare work. It was activated because a specific observed
constraint made its mechanism more credible.

### Stopping

P-06 and P-07 remained unexecuted. The process optimized the outcome rather than
completion of the original work list.

## Final disposition

The simulated target is reached and sustained within the defined confirmation
window and guardrails. The process learned faster than the target horizon,
rejected an unsafe apparent gain, activated a mechanism-specific contingency,
and stopped unnecessary work.
