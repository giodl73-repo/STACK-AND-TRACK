# Methodology

## 1. Target

State the current value, desired value, unit, time horizon, and authoritative
measurement source.

```text
Required impact = target - baseline
```

For metrics where lower is better, express required impact as the reduction
from baseline.

## 2. Stack

List plausible interventions and estimate:

- predicted impact;
- confidence;
- effort and time;
- dependencies;
- overlap with other interventions;
- owner;
- measurement method.

The stack must contain enough credible impact to support the target. A useful
diagnostic is:

```text
Stack coverage ratio = credible planned impact / required impact
```

A ratio below 1 cannot reach the target. A ratio near 1 has little resilience.
Aim for substantial surplus coverage, often near 2x, when the metric and
solution space permit it.

## 3. Pareto-prioritize

Order the stack by expected contribution, confidence, effort, time to value,
and strategic constraints. Select the smallest credible portfolio that can
reach the target while preserving alternatives.

## 4. Track

For every intervention, record:

```text
Predicted gain -> Realized gain -> Variance -> Explanation
```

Track the outcome and the intervention together. Completion without measured
impact is not a gain.

## 5. Learn

If realized gain is higher than predicted, identify amplifiers. If it is lower,
identify incorrect assumptions, overlap, dependencies, execution gaps,
measurement noise, or diminishing returns.

Apply those findings to the predicted impact and confidence of all remaining
items.

## 6. Re-stack

Recalculate coverage and priority after each meaningful result. Add new
interventions when the credible remaining stack no longer supports the
outstanding target.

## Bounded metrics

Targets near a hard ceiling, such as 99.9% to 99.999% reliability, may make 2x
non-overlapping impact physically impossible. In those cases, stack multiple
independent solution paths, each capable of reaching the target, and measure
the underlying loss unit such as downtime or customer-impact minutes.
