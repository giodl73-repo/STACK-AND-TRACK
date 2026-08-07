# Principles

## P-01: Begin with an outcome

State the baseline, target, unit, horizon, measurement source, owner, and
constraints before selecting work.

**Test:** Could two independent readers determine whether the outcome was
reached?

**Failure:** "Improve reliability" or "complete the modernization."

## P-02: The plan must add up

A target is not supported until the credible impact stack can reach it.

**Test:** Is credible planned impact at least equal to required impact?

**Failure:** A plan to remove one second from a process that must improve by two
seconds.

## P-03: Credible impact is not nominal impact

Adjust predictions for confidence, overlap, dependencies, diminishing returns,
and system constraints.

**Test:** Would the coverage calculation survive a challenge to its assumptions?

**Failure:** Adding every optimistic estimate as if all interventions succeed
fully and independently.

## P-04: Prefer surplus coverage when feasible

Exactly 1x coverage is fragile. Build meaningful contingency, often approaching
2x nominal opportunity, when the solution space and metric permit it.

**Test:** Can the target survive one or more reasonable misses?

**Failure:** Treating 2x as a universal law near a hard ceiling, or treating a
barely sufficient plan as resilient.

## P-05: Pareto-prioritize the vital few

Choose the smallest credible portfolio with the largest expected contribution,
considering confidence, effort, time to learning, safety, and constraints.

**Test:** Is easy or politically favored work displacing a difficult,
high-impact cause?

**Failure:** Ranking by item count, urgency, visibility, or incident frequency
alone.

## P-06: Keep alternatives visible

Unselected candidates remain part of the stack until evidence retires them.

**Test:** If the first portfolio misses, are credible alternatives ready?

**Failure:** Deleting the rest of the stack after committing to a roadmap.

## P-07: Shipment is not realized gain

Build, test, ship, stabilize, measure, and confirm before accepting impact.

**Test:** Did the authoritative outcome move within valid guardrails and a valid
evidence window?

**Failure:** Reporting completed tasks, deployed features, or closed incidents
as outcome improvement.

## P-08: Measure the portfolio; attribute carefully

The authoritative outcome movement is primary. Per-intervention gains are an
attribution model that must reconcile to the portfolio result and expose
overlap.

**Test:** Can attributed gains be explained without exceeding measured movement?

**Failure:** Independently adding correlated estimates or results from
overlapping windows.

## P-09: Variance is a learning asset

For every result, compare prediction with realization and explain why it was
higher, lower, absent, or harmful.

**Test:** Did the result change assumptions about related work?

**Failure:** Celebrating wins, hiding misses, or treating forecast error as
irrelevant history.

## P-10: Propagate learning

Apply new evidence to every remaining candidate sharing the same mechanism,
dependency, constraint, or assumption.

**Test:** Did impact, confidence, overlap, or priority change elsewhere?

**Failure:** Updating only the completed intervention.

## P-11: Re-stack while change is still possible

Recalculate outstanding impact, credible remaining impact, and priority after
meaningful evidence or constraint changes.

**Test:** Does the current portfolio still credibly reach the outstanding
target?

**Failure:** Waiting for a quarterly retrospective to acknowledge a weekly
coverage shortfall.

## P-12: Guardrails are part of the outcome

An improvement fails when it creates unacceptable safety, quality, cost, toil,
tail, cohort, privacy, or externality harm.

**Test:** Did the real system improve, not merely the selected metric?

**Failure:** Saving cost by shifting work, improving averages while tails
worsen, or reducing incidents by reducing reporting.

## P-13: Match rhythm to evidence latency

Update events promptly, but do not claim results before build, testing,
stabilization, measurement, and confirmation windows are valid.

**Test:** Is the next trustworthy evidence date explicit?

**Failure:** Waiting for meetings to update evidence or inventing provisional
gains to satisfy a report date.

## P-14: Keep the method tool-independent

Documents, spreadsheets, issue trackers, and AI assistants are valid working
surfaces. Software must earn admission by solving repeated unmet needs.

**Test:** Can practitioners inspect the arithmetic and continue without a
proprietary tool?

**Failure:** Hiding assumptions inside automation or treating generated numbers
as authority.
