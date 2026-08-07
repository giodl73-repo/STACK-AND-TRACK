# Transformed Composite: Authoring Responsiveness

## Disclosure

This transformed composite combines and alters generic editor-performance,
telemetry, monitoring, and regression-recovery patterns.

## Outcome

```text
Metric: p80 time until a workspace is editable
Baseline: 41 seconds
Target: 22 seconds
Required reduction: 19 seconds
Horizon: 18 weeks
```

## Stack

| ID | Candidate | Predicted reduction | Confidence |
|---|---|---:|---:|
| E-01 | Remove excessive startup telemetry | 4s | 80% |
| E-02 | Cache configuration and feature state | 3s | 75% |
| E-03 | Defer deep document analysis | 6s | 70% |
| E-04 | Reduce repeated dependency analysis | 5s | 65% |
| E-05 | Simplify workspace processing pipeline | 8s | 60% |
| E-06 | Add startup regression monitors | 0s direct | prerequisite |

Monitoring is required work but receives no invented responsiveness gain.

## Early movement and regression

E-01 realizes a 3-second reduction. E-02 realizes 5 seconds, outperforming its
estimate.

```text
Accepted improvement = 8 seconds
Current value = 33 seconds
```

Two unrelated releases then regress startup:

| Regression | Added latency |
|---|---:|
| Synchronous diagnostic logging | +3s |
| Repeated remote configuration retrieval | +2s |

```text
Observed value after regressions = 33 + 3 + 2 = 38 seconds
Net accepted reduction from baseline = 41 - 38 = 3 seconds
```

The portfolio curve moves backward. The team does not preserve the earlier
8-second status after the system regresses.

## Repair and prevention

The new monitors identify both regressions. Repair removes the added five
seconds and adds tests that prevent recurrence.

Regression removal restores the prior 33-second value. It is necessary accepted
movement, but it does not make the original E-01 and E-02 gains count twice.

## Remaining results

| ID | Predicted | Realized | Explanation |
|---|---:|---:|---|
| E-03 | 6s | 4s | Some analysis remained necessary before editing |
| E-04 | 5s | 6s | Duplicate graph traversal was larger than expected |
| E-05 | 8s | 7s | Pipeline simplification retained one compatibility stage |

```text
Final portfolio value =
  41
  - 3
  - 5
  + 3
  + 2
  - 3
  - 2
  - 4
  - 6
  - 7
  = 16 seconds
```

Equivalent reconciliation:

```text
Accepted planned improvements = 3 + 5 + 4 + 6 + 7 = 25 seconds
Temporary regressions = -5 seconds
Accepted repairs = +5 seconds
Net accepted reduction = 25 seconds
Final value = 41 - 25 = 16 seconds
```

## Re-stack

The target is reached before all speculative editor work begins. Remaining
items are retired from the current outcome. Monitoring continues as a guardrail
and evidence system rather than being assigned fictional latency impact.

## Lessons

- Regressions move the accepted portfolio curve backward.
- Repair restores lost ground; it does not double-count the original gain.
- Instrumentation may be prerequisite work with zero direct outcome credit.
- Prevention evidence matters even after the numerical target is reached.
