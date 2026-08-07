# Glossary

## Core terms

### Accepted realized gain

Outcome movement accepted after a valid measurement and confirmation window,
with a credible attribution argument and acceptable guardrails.

### Acceptance date

The earliest date a provisional result can become accepted realized gain.

### Amplifier

A condition that makes an intervention produce more impact than predicted and
may increase the value of related candidates.

### Assumption

A belief required for an impact estimate or mechanism to hold. Assumptions must
be visible and revisable.

### Attribution

The argument connecting an intervention or portfolio to measured outcome
movement while accounting for concurrent changes, overlap, noise, and
alternative explanations.

### Baseline

The authoritative starting value and measurement window against which change
is evaluated.

### Bounded metric

A metric with a hard or practical ceiling or floor, such as 100% availability
or zero defects.

### Candidate

A possible intervention retained in the stack whether selected now, deferred,
or held as contingency.

### Confirmation window

The additional observation period needed to show that a provisional result is
persistent and not measurement noise.

### Constraint

A condition that limits acceptable interventions or outcomes, including safety,
law, architecture, capacity, cost, time, or organizational authority.

### Credible impact

Predicted impact adjusted for confidence, overlap, dependencies, diminishing
returns, and relevant constraints. There is no universal formula; the
adjustment must be inspectable.

### Credible remaining impact

The current credible impact of candidates that have not yet produced accepted
realized gain.

### Dependency

A condition or another intervention that must hold before a candidate can
produce its predicted impact.

### Diminishing returns

The reduction in marginal gain as earlier interventions remove the easiest
opportunity or move the system bottleneck.

### Earliest learning date

The first date the planned measurement window can produce trustworthy
provisional evidence.

### Guardrail

A metric or constraint that must remain acceptable while the primary outcome
improves.

### Intervention

A specific action intended to change the outcome through an explicit mechanism.

### Learning latency

Elapsed time from trustworthy result availability to completion of its result
review.

### Measurement source

The authoritative system, dataset, or agreed method used to establish baseline,
current value, and target attainment.

### Measurement window

The period over which outcome data is collected after shipment and
stabilization.

### Nominal coverage

The sum of unadjusted predicted impacts divided by required impact.

### Outcome

An observable real-world condition the effort intends to change.

### Outcome owner

The person accountable for target validity, portfolio sufficiency, constraints,
and explicit target revisions.

### Outstanding impact

The remaining distance between the current accepted outcome and the target.

### Overlap

Impact claimed by more than one candidate because they affect the same cause,
window, mechanism, or loss pool.

### Pareto priority

Priority based on finding the smallest credible portfolio that produces the
largest outcome contribution under confidence, effort, timing, and constraints.

### Predicted gain

The estimated outcome movement assigned to an intervention before realization.

### Provisional gain

Measured movement that has not completed its confirmation, attribution, or
guardrail review.

### Required impact

The change needed to move from baseline or current accepted value to the
target, expressed in the outcome unit.

### Re-stack

Recalculate impact, confidence, overlap, coverage, and priority after new
evidence or constraints.

### Result review

The comparison of predicted and realized gain, variance explanation,
transferable learning, guardrail state, and re-stack decision.

### Selected portfolio

The candidates currently chosen for execution or measurement.

### Stack

The visible set of candidate interventions and their impact, confidence,
timing, relationships, ownership, and measurement plans.

### Stack Coverage Ratio

```text
credible planned or remaining impact / required or outstanding impact
```

Below 1x is insufficient. Near 1x is fragile. Higher coverage provides
contingency when physically and economically feasible.

### Stabilization window

Time after shipment for rollout effects, caches, behavior, traffic, and
operations to settle before representative measurement.

### Time to confirmation

Elapsed time through build, test, ship, stabilization, measurement, and the
additional persistence window.

### Time to learning

Elapsed time through build, test, ship, stabilization, measurement, and result
review.

### Variance

The difference between predicted gain and realized gain in the same unit.

## Terms that require qualification

Avoid these words without the associated detail:

| Ambiguous term | Required qualification |
|---|---|
| impact | predicted, credible, provisional, or accepted realized |
| done | built, tested, shipped, measuring, confirmed, or retired |
| savings | gross, net, realized, recurring, one-time, and whose cost moved |
| on track | current outcome, outstanding impact, remaining coverage, and evidence freshness |
| green | exact outcome, guardrails, freshness, and unresolved uncertainty |
| improvement | metric, unit, measurement window, attribution, and constraints |
| confidence | numeric or explicitly defined level with supporting evidence |
| priority | contribution, confidence, effort, time to learning, and constraints |
| result | provisional or accepted, with measurement and attribution status |
