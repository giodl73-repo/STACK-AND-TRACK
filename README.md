# STACK-AND-TRACK

STACK-AND-TRACK is a closed-loop method for turning a measurable target into a
credible impact portfolio, then updating that portfolio from actual results.

```text
Target
  -> Stack enough credible impact
  -> Pareto-prioritize
  -> Track predicted versus realized gain
  -> Learn from variance
  -> Re-stack
```

> Do not approve a target until the impact stack credibly supports it.

The method is useful when several uncertain interventions must combine to
improve performance, reliability, customer experience, cost, quality, capacity,
delivery, or another measurable outcome.

STACK-AND-TRACK was developed by Gio Della-Libera and David Blyth.

## Why use it?

Many plans name a target and a work list without proving that the work can
produce the target. Stack & Track makes the missing reasoning inspectable:

- How much improvement is required?
- Which interventions could create it?
- What remains after confidence, overlap, dependencies, and constraints?
- When will impact reach the affected population?
- What did each result teach us?
- Does the remaining plan still add up?

Shipment is visible, but only measured and accepted outcome movement counts as
realized gain.

## Start in 60 minutes

1. Read the [Quick Start](QUICKSTART.md).
2. Define the outcome in the [Stack Canvas](templates/stack-canvas.md).
3. Keep the live portfolio in the [Stack Ledger](templates/stack-ledger.md).
4. Compare prediction with evidence in the
   [Result Review](templates/result-review.md).
5. Recalculate coverage and priority after every meaningful result.

A first session may validly conclude that the target is unclear or the stack is
insufficient. Preventing a false commitment is useful progress.

## Core concepts

```text
Required impact = distance from baseline to target

Stack Coverage Ratio =
  credible planned impact / required impact

Temporal Coverage Ratio =
  credible cumulative impact expected by a checkpoint
  / required cumulative impact by that checkpoint
```

Credible impact accounts for confidence, overlap, dependencies, diminishing
returns, timing, rollout exposure, and relevant constraints.

Substantial surplus coverage—sometimes near 2x nominal opportunity—is useful as
**option, velocity, and regression reserve**. It is not permission to start
twice as much work or exceed safe work-in-progress limits.

## Learn through examples

| Need | Example |
|---|---|
| Basic additive impact | [Performance: 10 seconds to 8 seconds](examples/performance-10-to-8.md) |
| Bounded percentage target | [Reliability: 95% to 99%](examples/reliability-95-to-99.md) |
| Extreme reliability | [99.9% to 99.999%](examples/reliability-99.9-to-99.999.md) |
| Operational pain | [Incident-impact minutes](examples/incident-impact-minutes.md) |
| Foundational engineering work | [Recurring engineering loss](examples/fundamentals-recurring-loss.md) |
| Cross-domain practice | [Transformed-composite case pack](examples/transformed-composites/README.md) |
| Rollout, hotfix, and goal disruption | [Synthetic simulations](simulations/README.md) |

All private-derived patterns are generalized according to the
[Publication and Abstraction Policy](PUBLICATION_POLICY.md). Public examples do
not expose private workplace provenance.

## Run the method

| Activity | Guide or template |
|---|---|
| Facilitate a first session | [First working session](guides/first-working-session.md) |
| Establish weekly and monthly rhythms | [Operating rhythms](guides/operating-rhythms.md) |
| Manage required and forecast curves | [Progress curves](guides/progress-curves.md) |
| Handle a top-down goal or technology change | [Goal changes](guides/goal-changes.md) |
| Check data fitness | [Measurement quality](guides/measurement-quality.md) |
| Handle several metrics and guardrails | [Multi-metric outcomes](guides/multi-metric-outcomes.md) |
| Prepare a weekly update | [Weekly report](templates/weekly-report.md) |
| Run a leadership checkpoint | [Monthly outcome review](templates/monthly-outcome-review.md) |
| Plan staged realization | [Progress curve](templates/progress-curve.md) |

See the [generic use-case catalog](guides/use-case-catalog.md) for additional
domains.

## Method reference

- [Methodology](METHODOLOGY.md): canonical operating loop and formulas.
- [Principles](PRINCIPLES.md): governing doctrine.
- [Glossary](GLOSSARY.md): canonical vocabulary.
- [FAQ](FAQ.md): common edge cases and objections.
- [Framework comparisons](COMPARISONS.md): how the method relates to adjacent
  planning, improvement, and measurement frameworks.

## AI and portable data

AI may structure evidence, challenge arithmetic, compare predictions with
results, and propose re-stacking. It may not invent measurements, accept
results, waive guardrails, or make accountable decisions.

- [Responsible AI guide](AI_GUIDE.md)
- [Prompt catalog](prompts/README.md)
- [Optional portable JSON model](models/README.md)
- [Portable schema design](models/SCHEMA_DESIGN.md)
- [StackTrack CLI design](cli/DESIGN.md)
- [StackTrack paper prototype](cli/PAPER_PROTOTYPE.md)
- [StackTrack Software Admission Test](cli/ADMISSION_TEST.md)

Documents and spreadsheets remain first-class. Custom software is not required.

## Evidence and maturity

The methodology and current materials have reached synthetic role-review fixed
point under the repository's [role governance](.roles/ROLE.md). The review
history is available in the [role-review index](context/role-reviews/README.md).

Current maturity:

- documentation-first method and working templates: available;
- illustrative and transformed-composite examples: available;
- synthetic role and operational simulations: available;
- read-only StackTrack CLI design: reviewed; implementation evidence gate open;
- independent-human self-service usability gate: **open**;
- Software Admission Gate: **open; software remains deferred**.

Synthetic panels and simulations are design-review evidence, not independent
user research, expert testimony, organizational endorsement, or proof of
adoption.

## Contributing feedback

Use the [self-service usability test](guides/usability-test.md) and
[practitioner feedback template](templates/practitioner-feedback.md) when
evaluating the materials. Do not publish confidential targets, customers,
participants, workplace sources, or proprietary operational details.

See [MATERIALS_PLAN.md](MATERIALS_PLAN.md) for the remaining documentation and
adoption program.

## License

[MIT](LICENSE)
