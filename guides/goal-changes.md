# Goal Changes and Top-Down Pivots

A leadership directive can invalidate a previously sufficient stack. Treat the
change as a governed outcome decision, not as an extra roadmap item that the
team silently absorbs.

## Classify what changed

Record whether leadership changed:

| Change type | Example | Required response |
|---|---|---|
| Outcome | Reduce latency becomes increase portal adoption | Define a new outcome and stack |
| Acceptance condition | The latency target must be achieved through the new portal | Preserve the outcome but add the condition and re-test every candidate |
| Solution constraint | Use a named technology | Show its effect on impact, capacity, risk, and timing |
| Denominator | Existing users becomes all portal users | Rebaseline and recalculate all ratios |
| Horizon | Six months becomes four months | Recalculate temporal coverage and latest safe starts |
| Guardrail | Migration may not worsen sign-in reliability | Add evidence and stop conditions |

A new portal or technology is not automatically an outcome. It may be a
leadership-selected solution or acceptance condition. Name the intended user or
business result separately so completing the technology migration cannot be
mistaken for reaching the outcome.

## Version the goal

Do not overwrite the original target or make its history appear continuously
green.

```text
Goal version:
Effective date:
Decision owner:
Reason for change:
Previous baseline, target, denominator, and horizon:
New baseline, target, denominator, and horizon:
New acceptance conditions:
Evidence supporting the change:
```

Close or pause the previous goal explicitly. Preserve:

- accepted results;
- prediction variance;
- spend and capacity already consumed;
- unresolved guardrails;
- original forecasts and checkpoint status.

The new goal begins with a new coverage and temporal sufficiency test.

## Audit transferability

Classify every active or completed intervention:

| Classification | Meaning |
|---|---|
| Transferable | The mechanism should still affect the new outcome and has relevant evidence |
| Revalidation required | The mechanism may transfer, but the new system changes important assumptions |
| Prerequisite | It enables the new system but is not itself realized outcome gain |
| Stranded | It improves only the superseded path |
| Conflicting | It makes the new direction harder, riskier, or more expensive |
| Unknown | Evidence is insufficient to classify it |

Previously accepted gain does not automatically become accepted gain under the
new goal. Revalidate the mechanism, denominator, exposure, and guardrails.
Until then, show it as forecast carryover rather than realized progress.

## Recalculate before recommitting

At the change point:

```text
New required impact = new baseline - new target

New credible impact =
  revalidated transferable impact
  + credible new intervention impact
  - overlap, dependency, and migration deductions

New Stack Coverage Ratio =
  new credible impact / new required impact
```

Also recalculate:

- capacity remaining after transition work;
- integration, dual-run, rollout, and confirmation time;
- required remaining rate;
- temporal coverage at every leadership checkpoint;
- safe work-in-progress;
- regression and rollback reserve.

If the new stack is below 1x, leadership must change resources, scope, target,
horizon, or technology expectations. The team must not retain an old on-track
status while carrying an uncovered mandate.

## Treat integration as work, not assumed impact

Architecture, adapters, migration tooling, dual-run support, and training may be
necessary. They do not count as outcome gain unless they measurably move the
defined outcome.

Track them as prerequisites with:

- completion evidence;
- the intervention or rollout they enable;
- their capacity cost;
- the date their delay begins to threaten temporal coverage.

## Preserve two control loops during transition

Until the old path is retired, manage:

1. **Outcome control:** Does the new goal move toward its measurable target?
2. **Transition control:** Is migration safe, reversible, and inside capacity?

Migration percentage is not a substitute for the outcome. A portal can reach
100% adoption and still miss latency, reliability, cost, or user-experience
requirements.

## Leadership decision gate

Before accepting the revised commitment, leadership reviews:

| Question | Required evidence |
|---|---|
| What outcome changed? | Versioned goal statement |
| Why is the technology required? | Decision rationale and owner |
| What prior work transfers? | Transfer audit with revalidation state |
| What becomes stranded? | Explicit stop and capacity recovery decisions |
| Does the new stack add up? | Recalculated outcome and temporal coverage |
| Can the same date survive? | Integration, rollout, hotfix, and confirmation schedule |
| What will leadership change if it does not add up? | Resource, scope, horizon, target, or constraint decision |

## Anti-patterns

- Adding the portal while leaving every prior commitment unchanged.
- Calling migration completion the outcome.
- Counting old gains again without revalidation.
- Hiding stranded work to preserve a green narrative.
- Moving the baseline or denominator without versioning the target.
- Treating integration capacity as free.
- Keeping the deadline because leadership named it, despite temporal coverage
  below 1x.
- Relaxing guardrails to recover transition time.

## Operating rule

> A top-down change is accepted only after the goal, transferable evidence,
> remaining capacity, and impact stack have been recalculated in public.

Leadership owns the changed commitment. The team owns honest evidence about
what transfers, what is lost, and what the new plan can credibly achieve.
