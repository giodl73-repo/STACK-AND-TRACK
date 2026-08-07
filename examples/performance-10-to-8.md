# Performance Example: 10 Seconds to 8 Seconds

This is an illustrative example. The numbers teach the method; they are not
claims about a real system.

## Context

A service has p95 request latency of 10 seconds. The team wants to reach 8
seconds without increasing p99 latency, error rate, or cost per request by more
than 5%, and without degrading any major customer cohort.

```text
Baseline: 10 seconds
Target: 8 seconds
Required reduction: 2 seconds
Measurement: production p95 latency over comparable weekly windows
```

## Candidate stack

| ID | Candidate | Predicted reduction | Confidence | Confidence-adjusted impact | Important overlap or dependency |
|---|---|---:|---:|---:|---|
| P-01 | Remove a serial metadata lookup | 1.4s | 80% | 1.12s | Requires cache correctness |
| P-02 | Parallelize two independent downstream calls | 1.0s | 70% | 0.70s | Contention may reduce benefit |
| P-03 | Reduce payload parsing and allocation | 0.8s | 60% | 0.48s | Partly overlaps P-01 CPU savings |
| P-04 | Precompute a frequently requested projection | 0.6s | 50% | 0.30s | Depends on acceptable staleness |
| P-05 | Tune connection reuse and pooling | 0.5s | 40% | 0.20s | Benefit shrinks if P-02 changes concurrency |

Nominal predicted impact:

```text
1.4 + 1.0 + 0.8 + 0.6 + 0.5 = 4.3 seconds
Nominal coverage = 4.3 / 2.0 = 2.15x
```

Confidence-adjusted impact before overlap:

```text
1.12 + 0.70 + 0.48 + 0.30 + 0.20 = 2.80 seconds
```

The team estimates 0.30 seconds of overlap and dependency risk across the
portfolio:

```text
Credible planned impact = 2.80 - 0.30 = 2.50 seconds
Stack Coverage Ratio = 2.50 / 2.00 = 1.25x
```

The headline stack exceeds 2x nominal coverage, but the credible portfolio is
only 1.25x. Both numbers matter.

## Pareto selection

The team starts with P-01, P-02, and P-03 because they provide the largest
credible contribution and early learning. P-04 and P-05 remain visible as
alternatives.

## Illustrative results

| ID | Current predicted gain | Realized gain | Variance | Explanation |
|---|---:|---:|---:|---|
| P-01 | 1.4s | 1.3s | -0.1s | Cache validation added a small amount of work |
| P-02 | 1.0s | 0.4s | -0.6s | Parallel calls increased downstream contention |
| P-03 | 0.8s | 0.5s | -0.3s | Allocation fell, but the critical path moved elsewhere |

The production metric moves from 10.0 to 7.8 seconds, so the accepted portfolio
reduction is 2.2 seconds:

```text
Measured portfolio reduction = 10.0 - 7.8 = 2.2 seconds
```

The per-intervention values are an attribution model that reconciles to the
measured portfolio result. They must not be independently added if their
measurement windows or mechanisms overlap.

The result reaches the 8-second target, subject to persistence and guardrail
checks.

## Learning propagation

P-02 showed that concurrency assumptions were optimistic. That learning lowers
confidence in P-05 because both depend on connection and downstream capacity.

P-03 showed that the bottleneck moved after earlier improvements. Future CPU
work must be re-profiled against the new critical path rather than the original
baseline.

The team updates P-05 from 40% confidence to 20% and retires it unless later
evidence shows connection reuse is independently valuable.

## Re-stack

Because the target is reached, P-04 and P-05 are not counted as realized value.
They remain candidates until the result is sustained. If latency regresses,
their revised estimates and the new system profile determine the next order.

## Pitfalls demonstrated

- A plan with only P-01 would total 1.4 seconds and could not reach the target.
- Nominal 2x coverage did not equal credible 2x coverage.
- Completed work did not receive full predicted credit.
- Learning from one candidate changed another candidate's confidence.
- The team stopped based on the measured outcome, not the number of completed
  items.
