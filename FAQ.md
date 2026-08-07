# Frequently Asked Questions

## Is Stack & Track a replacement for project management?

No. Project management coordinates scope, people, dependencies, and delivery.
Stack & Track tests whether the intervention portfolio credibly supports the
outcome and whether delivered work produces realized gain.

## Is it just an OKR method?

No. An OKR may define the target. Stack & Track builds and continuously
recalculates the causal impact portfolio intended to reach it.

## Is it just Pareto analysis?

Pareto analysis identifies the vital few. Stack & Track continues through
intervention selection, shipment, measurement, variance learning, and
re-prioritization.

## Must every stack reach 2x coverage?

No. The plan must credibly reach at least 1x. Meaningful surplus coverage is
preferred because estimates and interventions miss. Two times nominal
opportunity is a useful aspiration in many domains, not a universal law.

The surplus is option, velocity, and regression reserve. Successful work can
move ahead of the required curve; if another intervention regresses or is
rolled back, a ready alternative can preserve the normal required rate. This
does not mean starting twice as much work. Keep safe capacity and WIP limits.

Near a ceiling or floor, literal 2x non-overlapping impact may be impossible.
Use loss units, independent solution paths, scenarios, and staged
confidence-building.

## What if the estimates do not add up to the target?

Do not approve the plan as sufficient. Add discovery, find more candidates,
change the mechanism, secure different resources, stage the target, or revise
the target explicitly. Hope is not coverage.

## How is credible impact calculated?

There is no universal formula. Start with predicted impact, then make
confidence, overlap, dependencies, diminishing returns, and constraints
explicit.

Simple confidence multiplication may be useful, but it is not automatically
correct. Correlated candidates, nonlinear systems, and scenario-dependent
effects may require ranges or scenario models.

Record the chosen adjustment method, assumptions, and sensitivity. If a small
assumption change moves coverage below 1x, report the plan as fragile rather
than hiding the sensitivity behind a single number.

## How do we avoid double counting?

Name the cause, mechanism, loss pool, and measurement window for each candidate.
Record pairwise overlap and dependencies. Keep the authoritative portfolio
movement primary, and require per-item attributions to reconcile to it.

## What if the work is a fundamental or architectural improvement?

Do not invent story-point impact. State the observable failure, risk, toil,
constraint, or recurring cost the work should remove.

Examples:

- repeated incidents prevented;
- unsupported dependencies eliminated;
- recovery time reduced;
- change failure rate reduced;
- capacity or delivery constraint removed;
- security exposure reduced;
- classes of defects made impossible.

If the result cannot be measured immediately, define evidence milestones and
the eventual outcome measurement.

## What if the outcome takes months to measure?

Separate execution, evidence, and governance clocks. Track build, test, ship,
stabilization, measurement, and confirmation windows. Use evidence milestones
without claiming them as realized outcome gain.

Slow measurement is not permission for stale assumptions. Update dependencies,
risks, estimates, and new evidence when they change.

## Why not count shipment as progress?

Shipment is execution progress and may be important, but it is not proof that
the outcome moved. Keep shipment visible in the lifecycle while reserving
realized gain for measured and accepted results.

## What if a gain is higher than predicted?

Identify the amplifier. Check whether the gain overlaps remaining opportunity,
then update related impact, confidence, and priority. Do not add the positive
variance twice.

## What if a gain is lower than predicted?

Inspect assumptions, dependencies, overlap, implementation, measurement noise,
system bottlenecks, and diminishing returns. Apply the learning to every
remaining candidate sharing those conditions.

## What if an intervention makes the primary metric better but a guardrail worse?

Do not accept it as an unqualified gain. Evaluate the net outcome, mitigate or
reverse the harm, and re-stack. Local metric movement does not override safety,
quality, cost, toil, tail, cohort, privacy, or externality constraints.

## What if the target changes?

Record who changed it, why, when, and which evidence justified the change.
Create a new goal version when the outcome, technology constraint, denominator,
horizon, or acceptance conditions materially change. Preserve the old history,
measure the new baseline, audit which work transfers, and recalculate impact,
temporal coverage, capacity, rollout, and confirmation time. Never preserve an
old "on track" status after changing the commitment.

## What if leadership mandates a new portal or technology?

First classify whether it changes the outcome, adds an acceptance condition, or
imposes a solution constraint. Migration is not automatically the outcome.

Measure the new system, preserve its valid wins, expose scenario regressions,
and classify old work as transferable, revalidation required, prerequisite,
stranded, conflicting, or unknown. If the revised stack does not add up,
leadership must change resources, scope, horizon, target, or the constraint.

Do not let attractive aggregate gains hide transaction, administration,
accessibility, regional, tail, or other cohort regressions. Those remain
mandatory repair work.

## How should weekly reports and monthly meetings differ?

Weekly reporting controls the live portfolio: outcome movement, accepted
results, variance, coverage, priority changes, and escalations.

Monthly outcome-owner reviews decide target validity, portfolio sufficiency,
resources, cross-team constraints, and work to stop. They should not repeat
line-by-line status already available in the ledger.

## Can an AI assistant run Stack & Track?

AI can:

- structure goals and candidate stacks;
- challenge arithmetic and overlap;
- summarize evidence;
- draft result reviews;
- identify shared assumptions;
- propose re-stacking options.

AI cannot:

- invent measurements;
- turn estimates into facts;
- claim unsupported attribution;
- waive guardrails;
- assume decision authority.

## Do we need special software?

No. Markdown, spreadsheets, issue trackers, and existing reporting systems are
enough to practice the method.

Software should be considered only after repeated use identifies a concrete
problem that these tools and AI prompts do not solve adequately.

## When is the effort finished?

When the target is reached and sustained within guardrails, or when the outcome
owner explicitly revises or stops the target using current evidence. Completing
the original work list is not the finish condition.
