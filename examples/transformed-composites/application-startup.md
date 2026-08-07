# Transformed Composite: Application Startup

## Disclosure

This transformed composite combines and alters generic performance-management
patterns. It does not describe a specific organization, product, or historical
program.

## Outcome

```text
Metric: p80 time to first useful interaction
Baseline: 6.8 seconds
Target: 4.6 seconds
Required reduction: 2.2 seconds
Horizon: 16 weeks
```

Guardrails:

- p95 startup does not worsen;
- startup success remains at or above baseline;
- no device or network cohort materially regresses;
- memory and service-call volume remain acceptable.

## Initial stack

| ID | Candidate | Predicted gain | Confidence | Credible gain |
|---|---|---:|---:|---:|
| A-01 | Defer non-critical shell initialization | 0.45s | 80% | 0.360s |
| A-02 | Cache navigation and command state | 0.65s | 75% | 0.488s |
| A-03 | Move secondary service calls after interaction | 0.50s | 70% | 0.350s |
| A-04 | Reorder initialization stages | 0.35s | 75% | 0.263s |
| A-05 | Prefetch common document data | 0.55s | 55% | 0.303s |
| A-06 | Reduce script evaluation and allocation | 0.50s | 60% | 0.300s |
| A-07 | Cache stable entry metadata | 0.40s | 50% | 0.200s |
| A-08 | Remove duplicate startup handshake | 0.45s | 60% | 0.270s |

```text
Nominal impact = 3.85 seconds
Nominal coverage = 3.85 / 2.20 = 1.75x
Confidence-adjusted impact = 2.533 seconds
Overlap and dependency deduction = 0.250 seconds
Credible impact = 2.283 seconds
Stack Coverage Ratio = 2.283 / 2.200 = 1.04x
```

The portfolio is covered but fragile. The team starts A-01 through A-05 and
keeps the remaining candidates as options.

## Results

| ID | Predicted | Realized | Variance | Decision |
|---|---:|---:|---:|---|
| A-01 | 0.45s | 0.70s | +0.25s | Accept; reduce later critical-path opportunity |
| A-02 | 0.65s | 0.42s | -0.23s | Accept; cache invalidation cost was underestimated |
| A-03 | 0.50s | 0.30s | -0.20s | Accept; one service call remained blocking |
| A-04 | 0.35s | 0.41s | +0.06s | Accept |
| A-05 | 0.55s | 0.00s | -0.55s | Dismiss; prefetch completed too late to help |

```text
Accepted reduction after first portfolio =
  0.70 + 0.42 + 0.30 + 0.41
  = 1.83 seconds

Current startup = 6.80 - 1.83 = 4.97 seconds
Outstanding reduction = 4.97 - 4.60 = 0.37 seconds
```

## Re-stack

A-05's no-gain result lowers confidence in other speculative prefetch work.
A-01's positive variance also moves the bottleneck, reducing the expected value
of A-06.

The team activates A-07 and A-08:

| ID | Revised prediction | Realized | Learning |
|---|---:|---:|---|
| A-07 | 0.30s | 0.25s | Stable metadata was useful but smaller than forecast |
| A-08 | 0.25s | 0.22s | Duplicate negotiation existed only on part of the path |

```text
Final accepted reduction = 1.83 + 0.25 + 0.22 = 2.30 seconds
Final startup = 6.80 - 2.30 = 4.50 seconds
```

## Lessons

- Positive variance can reduce opportunity remaining elsewhere.
- A no-gain intervention stays visible and changes future confidence.
- Option coverage lets the team recover without starting every candidate.
- The team stops at the outcome rather than completing the original roadmap.
