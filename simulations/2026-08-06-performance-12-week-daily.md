# Twelve-Week Daily Performance Ledger

This is the daily companion to
[`2026-08-06-performance-12-week.md`](2026-08-06-performance-12-week.md).

## Simulation rules

- Calendar: 84 days from 2026-08-10 through 2026-11-01.
- Engineering work advances on business days.
- Production telemetry accrues every day.
- Build, test, review queue, rollout, stabilization, measurement, and
  confirmation durations include seeded variation.
- Daily p95 includes Gaussian measurement noise with seed `202608061`.
- Observed p95 is not accepted p95.
- Accepted p95 changes only after measurement, attribution, guardrail, and
  confirmation review.

## Daily ledger

| Day | Date | Observed p95 | Accepted p95 | Event |
|---:|---|---:|---:|---|
| 1 | 2026-08-10 | 9.996s | 10.000s | Kickoff; baseline and guardrails accepted |
| 2 | 2026-08-11 | 9.995s | 10.000s | Telemetry accrues; no lifecycle transition |
| 3 | 2026-08-12 | 9.927s | 10.000s | P-02 starts |
| 4 | 2026-08-13 | 9.895s | 10.000s | Telemetry accrues; no lifecycle transition |
| 5 | 2026-08-14 | 9.965s | 10.000s | Telemetry accrues; no lifecycle transition |
| 6 | 2026-08-15 | 9.979s | 10.000s | Telemetry accrues; no lifecycle transition |
| 7 | 2026-08-16 | 10.000s | 10.000s | Telemetry accrues; no lifecycle transition |
| 8 | 2026-08-17 | 9.969s | 10.000s | P-03 starts |
| 9 | 2026-08-18 | 10.010s | 10.000s | P-01 build completes one workday late |
| 10 | 2026-08-19 | 10.002s | 10.000s | Telemetry accrues; no lifecycle transition |
| 11 | 2026-08-20 | 10.018s | 10.000s | P-01 testing completes |
| 12 | 2026-08-21 | 10.060s | 10.000s | P-03 build completes early |
| 13 | 2026-08-22 | 9.974s | 10.000s | Telemetry accrues; no lifecycle transition |
| 14 | 2026-08-23 | 9.961s | 10.000s | Telemetry accrues; no lifecycle transition |
| 15 | 2026-08-24 | 9.978s | 10.000s | P-01 review queue clears; P-02 build completes; P-04 starts |
| 16 | 2026-08-25 | 9.928s | 10.000s | P-01 reaches 10% production |
| 17 | 2026-08-26 | 9.682s | 10.000s | P-01 reaches 50%; P-02 and P-03 tests complete |
| 18 | 2026-08-27 | 9.166s | 10.000s | P-01 reaches 100% |
| 19 | 2026-08-28 | 9.205s | 10.000s | P-03 review clears |
| 20 | 2026-08-29 | 9.176s | 10.000s | P-01 stabilization completes |
| 21 | 2026-08-30 | 9.267s | 10.000s | Telemetry accrues; no lifecycle transition |
| 22 | 2026-08-31 | 9.180s | 10.000s | P-02 review clears; P-03 reaches 10% |
| 23 | 2026-09-01 | 8.852s | 10.000s | P-02 reaches 10%; P-03 reaches 50% |
| 24 | 2026-09-02 | 8.710s | 10.000s | P-02 reaches 25% |
| 25 | 2026-09-03 | 8.339s | 10.000s | P-02 reaches 50%; P-03 reaches 100%; P-01 measurement closes; P-04 build completes |
| 26 | 2026-09-04 | 8.084s | 10.000s | P-02 reaches 100% |
| 27 | 2026-09-05 | 8.054s | 10.000s | P-03 stabilization completes |
| 28 | 2026-09-06 | 8.105s | 9.224s | P-01 accepted; week-4 leadership review |
| 29 | 2026-09-07 | 8.157s | 9.224s | Telemetry accrues; no lifecycle transition |
| 30 | 2026-09-08 | 8.110s | 9.224s | P-04 tests complete |
| 31 | 2026-09-09 | 8.060s | 9.224s | Telemetry accrues; no lifecycle transition |
| 32 | 2026-09-10 | 8.136s | 9.224s | P-03 measurement closes; P-04 review clears |
| 33 | 2026-09-11 | 8.082s | 9.224s | P-02 measurement closes; P-04 reaches 10%; error +0.2pp |
| 34 | 2026-09-12 | 7.896s | 9.224s | P-04 reaches 25%; error +1.2pp triggers rollback |
| 35 | 2026-09-13 | 8.064s | 8.540s | P-03 accepted; P-04 rollback verified |
| 36 | 2026-09-14 | 8.053s | 8.096s | P-02 accepted; P-05 activated and starts |
| 37 | 2026-09-15 | 8.115s | 8.096s | Telemetry accrues; no lifecycle transition |
| 38 | 2026-09-16 | 8.098s | 8.096s | Telemetry accrues; no lifecycle transition |
| 39 | 2026-09-17 | 8.088s | 8.096s | P-04 result rejected; design retired |
| 40 | 2026-09-18 | 8.078s | 8.096s | Telemetry accrues; no lifecycle transition |
| 41 | 2026-09-19 | 8.064s | 8.096s | Telemetry accrues; no lifecycle transition |
| 42 | 2026-09-20 | 8.054s | 8.096s | Telemetry accrues; no lifecycle transition |
| 43 | 2026-09-21 | 8.054s | 8.096s | P-05 build completes one workday late |
| 44 | 2026-09-22 | 8.102s | 8.096s | P-05 tests complete early |
| 45 | 2026-09-23 | 8.028s | 8.096s | P-05 review clears |
| 46 | 2026-09-24 | 8.076s | 8.096s | P-05 reaches 10% |
| 47 | 2026-09-25 | 8.008s | 8.096s | P-05 reaches 25% |
| 48 | 2026-09-26 | 7.900s | 8.096s | P-05 reaches 50% |
| 49 | 2026-09-27 | 7.893s | 8.096s | Telemetry accrues; no lifecycle transition |
| 50 | 2026-09-28 | 7.644s | 8.096s | P-05 reaches 100% |
| 51 | 2026-09-29 | 7.725s | 8.096s | Telemetry accrues; no lifecycle transition |
| 52 | 2026-09-30 | 7.701s | 8.096s | P-05 stabilization completes |
| 53 | 2026-10-01 | 7.721s | 8.096s | Telemetry accrues; no lifecycle transition |
| 54 | 2026-10-02 | 7.717s | 8.096s | Telemetry accrues; no lifecycle transition |
| 55 | 2026-10-03 | 7.657s | 8.096s | Telemetry accrues; no lifecycle transition |
| 56 | 2026-10-04 | 7.748s | 8.096s | Week-8 leadership review; P-05 still measuring |
| 57 | 2026-10-05 | 7.739s | 8.096s | P-05 measurement closes |
| 58 | 2026-10-06 | 7.732s | 8.096s | Telemetry accrues; no lifecycle transition |
| 59 | 2026-10-07 | 7.663s | 8.096s | Telemetry accrues; no lifecycle transition |
| 60 | 2026-10-08 | 7.765s | 7.736s | P-05 accepted; target reached pending horizon confirmation |
| 61 | 2026-10-09 | 7.672s | 7.736s | Telemetry accrues; no lifecycle transition |
| 62 | 2026-10-10 | 7.681s | 7.736s | Telemetry accrues; no lifecycle transition |
| 63 | 2026-10-11 | 7.781s | 7.736s | Telemetry accrues; no lifecycle transition |
| 64 | 2026-10-12 | 7.774s | 7.736s | Sustainment check passes; P-06 retired |
| 65 | 2026-10-13 | 7.772s | 7.736s | Telemetry accrues; no lifecycle transition |
| 66 | 2026-10-14 | 7.782s | 7.736s | Telemetry accrues; no lifecycle transition |
| 67 | 2026-10-15 | 7.724s | 7.736s | Telemetry accrues; no lifecycle transition |
| 68 | 2026-10-16 | 7.784s | 7.736s | Telemetry accrues; no lifecycle transition |
| 69 | 2026-10-17 | 7.787s | 7.736s | Telemetry accrues; no lifecycle transition |
| 70 | 2026-10-18 | 7.708s | 7.736s | Telemetry accrues; no lifecycle transition |
| 71 | 2026-10-19 | 7.738s | 7.736s | Long-window attribution review begins |
| 72 | 2026-10-20 | 7.672s | 7.736s | Telemetry accrues; no lifecycle transition |
| 73 | 2026-10-21 | 7.692s | 7.736s | Telemetry accrues; no lifecycle transition |
| 74 | 2026-10-22 | 7.741s | 7.736s | Telemetry accrues; no lifecycle transition |
| 75 | 2026-10-23 | 7.762s | 7.736s | Telemetry accrues; no lifecycle transition |
| 76 | 2026-10-24 | 7.770s | 7.736s | Telemetry accrues; no lifecycle transition |
| 77 | 2026-10-25 | 7.780s | 7.736s | Telemetry accrues; no lifecycle transition |
| 78 | 2026-10-26 | 7.709s | 7.736s | Final cohort and guardrail review begins |
| 79 | 2026-10-27 | 7.798s | 7.736s | Telemetry accrues; no lifecycle transition |
| 80 | 2026-10-28 | 7.791s | 7.736s | Telemetry accrues; no lifecycle transition |
| 81 | 2026-10-29 | 7.810s | 7.736s | Telemetry accrues; no lifecycle transition |
| 82 | 2026-10-30 | 7.826s | 7.736s | Telemetry accrues; no lifecycle transition |
| 83 | 2026-10-31 | 7.786s | 7.736s | Telemetry accrues; no lifecycle transition |
| 84 | 2026-11-01 | 7.757s | 7.780s | Week-12 confirmation; portfolio reconciled to 7.78s |

## Regression and rollback

P-04 begins on day 15. It consumes 25 calendar days and 19 business days from
start through final rejection.

On day 33, the 10% canary improves observed p95 slightly while error rate rises
by 0.2 percentage points. On day 34, the 25% rollout improves p95 further but
raises errors by 1.2 percentage points.

The system:

1. stops rollout;
2. rolls back P-04;
3. verifies recovery on day 35;
4. keeps P-04 gain at zero;
5. records the failed mechanism and guardrail evidence;
6. retires the design on day 39.

The lower observed p95 on day 34 never enters accepted progress.

## Recovering lost time

At final P-04 rejection:

```text
Accepted p95 = 8.096 seconds
Outstanding reduction = 0.096 seconds
Time remaining = 45 calendar days
Required remaining rate =
  0.096 / (45 / 7)
  = 0.0149 seconds per week
```

The process does not recover by skipping tests, compressing confirmation,
removing guardrails, or forcing overtime.

It recovers by using previously created option value:

- P-05 was already retained as contingency.
- P-02's miss made P-05's mechanism more credible.
- P-04 capacity moves to P-05 after rollback verification.
- P-05 uses a bounded rollout rather than maximum exposure.
- P-06 and P-07 remain unstarted, limiting work in progress.
- Early accepted progress left the target ahead of its required curve.

## Recovery decision record

| Decision | Reason |
|---|---|
| Activate P-05 | Specific contention learning supports its mechanism |
| Reassign P-04 capacity | Rolled-back design no longer warrants work |
| Keep full P-05 tests | Lost time does not reduce safety requirements |
| Use staged 10/25/50/100 rollout | Limits another regression |
| Hold P-06 and P-07 | Existing contingency is sufficient |
| Keep confidence medium | Target is plausible, but recent forecast and guardrail misses matter |

## Daily-learning lessons

- Daily telemetry can move long before accepted progress.
- Review queues and rollout stages materially affect time to learning.
- A fix can improve the primary metric and still be a failed intervention.
- Rollback time and rejected work belong in forecast calibration.
- Schedule recovery should consume portfolio contingency before team safety or
  evidence quality.
- Early over-coverage and staggered work create recovery options.
- Once the target is reached, unused work should stop rather than become
  mandatory roadmap completion.
