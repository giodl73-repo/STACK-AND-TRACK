# Six-Month Population-Weighted Station Rollout Simulation

Date: 2026-08-06

## Disclosure

This is a deterministic synthetic simulation. It illustrates how a six-week
station rollout, population weighting, a mid-deployment regression, and a
hotfix change a plan to reduce global average latency from 20 seconds to 15
seconds.

It is not evidence about a real service or region.

Fixture:
[`data/six-month-station-rollout-20260806.json`](data/six-month-station-rollout-20260806.json)

## Outcome

```text
Metric: population-weighted mean user-observed latency
Baseline: 20.0 seconds
Target: 15.0 seconds
Required reduction: 5.0 seconds
Horizon: 26 weeks
Measurement: comparable station and global production telemetry windows
```

The arithmetic uses a population-weighted mean because regional p95 values
cannot be averaged into a mathematically valid global p95. A real program may
track global p95 separately, but must preserve station-level cohort guardrails.

Guardrails:

- no station's p95 or error rate materially regresses;
- no lower-population station receives weaker safety or rollback protection;
- global improvement cannot hide station-level harm;
- Europe and the United States receive a change only after earlier stations
  pass their evidence windows;
- hotfixes repeat the relevant test and rollout stages rather than bypassing
  them.

## Six rollout stations

| Rollout week | Station | Population weight | Cumulative exposure |
|---:|---|---:|---:|
| 1 | Oceania | 3% | 3% |
| 2 | Africa and Middle East | 7% | 10% |
| 3 | Latin America | 8% | 18% |
| 4 | Asia-Pacific | 17% | 35% |
| 5 | Europe | 27% | 62% |
| 6 | United States | 38% | 100% |

Europe and the United States are last because together they represent 65% of
the population. Earlier stations reduce blast radius and produce operational
evidence before the highest-exposure stages.

This sequencing does **not** make earlier users disposable test subjects. The
same service objectives, guardrails, stop conditions, and rollback rights apply
at every station.

## Why deployment changes the impact arithmetic

For intervention `i` in week `w`:

```text
Exposure-weighted global gain(i, w) =
  sum of (
    station population weight
    x accepted local gain at that station
  )
```

If a fix produces a uniform 1.0-second local improvement:

| Rollout state | Global reduction credited |
|---|---:|
| Oceania only | 0.03s |
| Through Africa and Middle East | 0.10s |
| Through Latin America | 0.18s |
| Through Asia-Pacific | 0.35s |
| Through Europe | 0.62s |
| Through United States | 1.00s |

A completed build is therefore not a 1.0-second global result. Even after four
healthy rollout weeks, only 35% of its eventual global impact is exposed.

## Initial stack

| ID | Candidate | Predicted full-population reduction | Confidence | Confidence-adjusted impact |
|---|---|---:|---:|---:|
| S-01 | Remove serial configuration lookup | 1.4s | 85% | 1.190s |
| S-02 | Reduce response payload and parsing | 1.6s | 75% | 1.200s |
| S-03 | Reuse warm service connections | 1.3s | 80% | 1.040s |
| S-04 | Add regional projection cache | 1.2s | 65% | 0.780s |
| S-05 | Eliminate redundant policy evaluation | 1.3s | 70% | 0.910s |
| S-06 | Precompute common response fragments | 1.1s | 65% | 0.715s |
| S-07 | Alternative query path | 1.0s | 55% | 0.550s |
| S-08 | Selective asynchronous enrichment | 0.9s | 50% | 0.450s |

```text
Nominal impact = 9.8 seconds
Nominal coverage = 9.8 / 5.0 = 1.96x
Confidence-adjusted impact = 6.835 seconds
Estimated overlap and dependency reserve = 0.900 seconds
Credible planned impact = 5.935 seconds
Initial Stack Coverage Ratio = 5.935 / 5.0 = 1.19x
```

The near-2x nominal stack provides options and regression reserve. It does not
authorize eight simultaneous deployments. The program limits itself to two
active station rollouts.

## Required trajectory

The required curve reflects six-week rollouts and leaves the final month for
confirmation:

| Checkpoint | Required accepted reduction | Required global latency |
|---:|---:|---:|
| Week 0 | 0.0s | 20.0s |
| Week 4 | 0.2s | 19.8s |
| Week 8 | 1.4s | 18.6s |
| Week 13 | 2.8s | 17.2s |
| Week 17 | 4.0s | 16.0s |
| Week 21 | 5.0s | 15.0s |
| Week 26 | 5.0s confirmed | 15.0s confirmed |

Reaching 15 seconds for the first time in week 26 would be too late. The plan
aims to reach the target by week 21 and preserve five weeks for persistence,
seasonality, and portfolio reconciliation.

## Planned rollout train

| Item | First station | Planned full exposure | Actual full exposure | Final accepted gain |
|---|---:|---:|---:|---:|
| S-01 | week 2 | week 7 | week 7 | 1.25s |
| S-02 | week 5 | week 10 | week 10 | 1.30s |
| S-03 | week 8 | week 13 | week 13 | 1.15s |
| S-04 | week 11 | week 16 | week 19 after hotfix | 0.90s |
| S-05 | contingency started week 14 | not initially selected | week 19 | 1.00s |

S-06 through S-08 remain options. They are not started merely to preserve
nominal 2x coverage.

## The regression and hotfix

S-04 enters Oceania in week 11 and initially shows a healthy 0.9-second local
gain. In week 12, Africa and Middle East exposes a connection-queue defect:

```text
Expected S-04 contribution at 10% exposure:
  0.9 x 10% = 0.090 seconds of global improvement

Observed contribution:
  Oceania: 3% x 0.9s improvement = +0.027s
  Africa and Middle East: 7% x 2.0s regression = -0.140s
  Net observed global contribution = -0.113s
```

The global metric worsens by only 0.113 seconds, but the affected station is
2.0 seconds slower. The station guardrail, not the small global movement,
triggers the response:

1. Freeze S-04 before Latin America, Asia-Pacific, Europe, or the United States.
2. Roll back S-04 from the exposed stations.
3. Remove its earlier provisional gain from the accepted curve.
4. Build and test a queue-bounding hotfix in weeks 12 and 13.
5. Restart the station sequence in week 14.
6. Activate S-05 contingency without exceeding the two-rollout WIP limit.

The hotfix does not resume at Europe or skip previously tested stations. Its
full-exposure date moves from week 16 to week 19.

## Weekly exposure-weighted result

Partial gains enter the accepted curve only after the station evidence window
passes. S-04 is removed during rollback and re-enters after the hotfix.

| Week | Material event | Accepted global reduction | Accepted global latency |
|---:|---|---:|---:|
| 0 | Baseline | 0.000s | 20.000s |
| 1 | Build and station readiness | 0.000s | 20.000s |
| 2 | S-01 enters Oceania | 0.038s | 19.963s |
| 3 | S-01 reaches 10% exposure | 0.125s | 19.875s |
| 4 | S-01 reaches 18% exposure | 0.225s | 19.775s |
| 5 | S-01 at 35%; S-02 enters Oceania | 0.477s | 19.524s |
| 6 | S-01 reaches Europe; S-02 at 10% | 0.905s | 19.095s |
| 7 | S-01 full; S-02 at 18% | 1.484s | 18.516s |
| 8 | S-02 at 35%; S-03 enters Oceania | 1.740s | 18.261s |
| 9 | S-02 reaches Europe; S-03 at 10% | 2.171s | 17.829s |
| 10 | S-02 full; S-03 at 18% | 2.757s | 17.243s |
| 11 | S-03 at 35%; S-04 enters Oceania | 2.980s | 17.021s |
| 12 | S-04 regresses and is rolled back | 3.263s | 16.737s |
| 13 | S-03 full; S-04 hotfix testing | 3.700s | 16.300s |
| 14 | S-04 restarts; S-05 enters Oceania | 3.757s | 16.243s |
| 15 | S-04 and S-05 reach 10% | 3.890s | 16.110s |
| 16 | S-04 and S-05 reach 18% | 4.042s | 15.958s |
| 17 | S-04 and S-05 reach 35% | 4.365s | 15.635s |
| 18 | S-04 and S-05 reach Europe | 4.878s | 15.122s |
| 19 | S-04 and S-05 reach the United States | 5.600s | 14.400s |
| 20 | Stabilization | 5.600s | 14.400s |
| 21 | Target checkpoint passes | 5.600s | 14.400s |
| 22 | Confirmation | 5.600s | 14.400s |
| 23 | Confirmation | 5.600s | 14.400s |
| 24 | Confirmation | 5.600s | 14.400s |
| 25 | Reconciliation | 5.600s | 14.400s |
| 26 | Final confirmation | 5.600s | 14.400s |

At week 12 the observed global latency briefly reaches approximately 16.85
seconds because of S-04's `-0.113s` net contribution. The table retains 16.737
seconds as the accepted curve because S-04 is rejected and rolled back rather
than incorporated into accepted progress.

## Monthly leadership view

| Checkpoint | Required reduction | Accepted reduction | Confidence | Decision |
|---:|---:|---:|---|---|
| Week 4 | 0.2s | 0.225s | medium | The curve is on plan, but 82% of S-01 impact is still unexposed |
| Week 8 | 1.4s | 1.740s | medium, increasing | S-01 is confirmed; continue the staggered train |
| Week 13 | 2.8s | 3.700s | medium | Progress is ahead, but S-04 slipped three weeks after rollback |
| Week 17 | 4.0s | 4.365s | medium, increasing | Contingency offsets the slip; 65% of two active fixes remains concentrated in Europe and the United States |
| Week 21 | 5.0s | 5.600s | high | Target is reached with four weeks of confirmation evidence |
| Week 26 | 5.0s | 5.600s | high | Target and station guardrails remain confirmed |

The week-13 confidence case does not become high merely because accepted
progress is ahead. The failed rollout reveals mechanism risk, and most of the
remaining population has not seen the hotfixed item.

## What rollout latency changes in the plan

### Forecast exposure, not completion

Every item needs separate dates for:

- build complete;
- first station;
- Europe;
- United States;
- full population;
- confirmation.

Forecasting the full predicted gain at build completion would materially
overstate progress.

### Back-loaded population creates concentration risk

Only 35% of an item's global effect is available before Europe and the United
States. A portfolio can have many shipped fixes and still be below its required
global curve.

### A target-closing item must start early

A normal rollout that begins after week 21 cannot reach full population by week
26. If confirmation is required, the practical latest start is earlier. This
simulation closes the target in week 19 and uses the remaining horizon to prove
persistence.

### Hotfixes consume temporal reserve

S-04's technical correction takes two weeks, but repeating rollout stages moves
full exposure by three weeks. Recovery planning must include the repeated
deployment and evidence time, not only coding time.

### Global averages are not sufficient safety controls

The S-04 defect moves the global average by only 0.113 seconds while making one
station 2.0 seconds slower. Every station therefore needs explicit outcome and
guardrail telemetry.

### The 2x stack is option coverage, not rollout congestion

Surplus candidates let S-05 start when S-04 slips. The program continues near
the required trajectory without starting every candidate, exceeding safe WIP,
or weakening the rollout gate.

## Final disposition

```text
Baseline: 20.0 seconds
Target: 15.0 seconds
Final accepted latency: 14.4 seconds
Accepted reduction: 5.6 seconds
Target surplus: 0.6 seconds
Target first reached: week 19
Final confirmation: week 26
```

The six-week rollout makes deployment exposure part of impact accounting. The
plan succeeds because fixes are staggered, gains are population-weighted,
station regressions override the global average, a hotfix repeats safety gates,
and contingency is available without doubling concurrent work.
