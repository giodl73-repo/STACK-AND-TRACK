# Methodology

This document defines the core loop. See:

- [`PRINCIPLES.md`](PRINCIPLES.md) for governing doctrine;
- [`GLOSSARY.md`](GLOSSARY.md) for canonical vocabulary;
- [`FAQ.md`](FAQ.md) for common edge cases;
- [`QUICKSTART.md`](QUICKSTART.md) to run a first session.

## 1. Target

State the current value, desired value, unit, time horizon, and authoritative
measurement source. Name the outcome denominator, material cohorts, guardrails,
owner, and goal version.

```text
Required impact = target - baseline
```

For metrics where lower is better, express required impact as the reduction
from baseline.

If a new portal, platform, technology, population, or acceptance condition
changes the system being measured, establish a new versioned baseline rather
than silently inheriting the old one.

## 2. Stack

List plausible interventions and estimate:

- predicted impact;
- confidence;
- effort and time;
- dependencies;
- overlap with other interventions;
- owner;
- measurement method;
- affected denominator and rollout sequence;
- scenario-specific wins and regressions.

The stack must contain enough credible impact to support the target. A useful
diagnostic is:

```text
Stack coverage ratio = credible planned impact / required impact
```

A ratio below 1 cannot reach the target. A ratio near 1 has little resilience.
Aim for substantial surplus coverage, often near 2x, when the metric and
solution space permit it.

Surplus coverage is an **option, velocity, and regression reserve**. Successful
work may move the portfolio ahead of the required curve; failed or regressing
work can be replaced while normal progress continues. It is not permission to
start twice as much work. Preserve safe capacity and work-in-progress limits.

## 3. Pareto-prioritize

Order the stack by expected contribution, confidence, effort, time to value,
and strategic constraints. Select the smallest credible portfolio that can
reach the target while preserving alternatives.

Use **time to learning**, not implementation time alone:

```text
build + test + ship + stabilize + measure + review
```

## 4. Track

For every intervention, record:

```text
Predicted gain -> Realized gain -> Variance -> Explanation
```

Track the outcome and the intervention together. Completion without measured
impact is not a gain.

Interventions move through:

```text
build -> test -> ship -> stabilize -> measure -> confirm
```

Results remain provisional until their measurement, attribution, guardrail, and
confirmation requirements are satisfied.

For staged deployments:

```text
Exposure-weighted realized gain =
  sum of (
    cohort share of the outcome denominator
    x accepted local gain
  )
```

Do not credit full impact at build completion, first deployment, or migration
completion. Keep cohort guardrails authoritative even when the global result
looks favorable.

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

If leadership changes the outcome, technology, denominator, horizon, or
acceptance conditions:

1. preserve the previous goal and accepted history;
2. version the new goal and measure its baseline;
3. classify prior work as transferable, revalidation required, prerequisite,
   stranded, conflicting, or unknown;
4. avoid counting transferred mechanisms again when they are already embedded
   in the new baseline;
5. recalculate outcome coverage, temporal coverage, capacity, rollout, hotfix,
   and confirmation time;
6. require an explicit leadership decision when the revised stack is
   insufficient.

See [`guides/goal-changes.md`](guides/goal-changes.md).

## 7. Manage the curve

Test when impact and evidence arrive, not only the total expected at the target
date.

```text
Required remaining rate = outstanding impact / remaining time

Temporal Coverage Ratio =
  credible cumulative impact expected by a checkpoint
  / required cumulative impact by that checkpoint
```

Stagger learning-now, landing-soon, structural-later, and contingency work so
the portfolio produces evidence and accepted gains while there is still time
to adapt. Do not force a linear curve when the system is stepwise or S-shaped,
and do not treat activity as progress merely to satisfy a reporting rhythm.

See [`guides/progress-curves.md`](guides/progress-curves.md).

## 8. Mixed effects

An intervention may improve some scenarios and regress others. Model each
material scenario in the same outcome unit and denominator:

```text
Weighted portfolio effect =
  sum of (scenario share x scenario outcome change)
```

The weighted result describes aggregate movement; it does not waive scenario
guardrails. A large browse improvement cannot compensate for an unacceptable
transaction, administration, accessibility, regional, or tail regression.

When a mandated technology provides useful wins but also causes regressions,
preserve the wins, make regression repair mandatory, and stack the additional
work needed to reach the original outcome safely.

## Bounded metrics

Targets near a hard ceiling, such as 99.9% to 99.999% reliability, may make 2x
non-overlapping impact physically impossible. In those cases, stack multiple
independent solution paths, each capable of reaching the target, and measure
the underlying loss unit such as downtime or customer-impact minutes.
