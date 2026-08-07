# Operating Rhythms

Stack & Track is a live learning system, not a monthly status exercise. Teams
may report weekly, meet a leader monthly, and measure outcomes at entirely
different speeds. The operating model must connect those rhythms without
delaying material learning.

## The four clocks

| Clock | Question | Typical trigger | Owner |
|---|---|---|---|
| Measurement | What happened to the outcome? | New authoritative data | Metric owner |
| Execution | What changed in the intervention portfolio? | Work started, changed, completed, blocked, or retired | Intervention owner |
| Learning | Why was realized gain different from predicted gain? | A result becomes measurable | Intervention owner and reviewers |
| Governance | What decision, resource, or target change is needed? | Coverage shortfall, guardrail breach, dependency, or scheduled review | Outcome owner |

These clocks do not need the same frequency. A monthly meeting cannot be the
first time a weekly result enters the ledger.

## The intervention lifecycle

An intervention needs time to become measurable:

```text
Estimate
  -> Build
  -> Test
  -> Ship
  -> Stabilize
  -> Measure
  -> Confirm
  -> Accept the result
  -> Learn and re-stack
```

Do not demand realized gain while work is still being built, tested, or
stabilized. Do not treat shipment as proof of impact.

Every selected intervention should record:

| Field | Meaning |
|---|---|
| Build window | Time needed to implement the change |
| Test window | Evidence required before release |
| Ship date or window | When exposure begins |
| Stabilization window | Time for rollout effects, caches, behavior, or operations to settle |
| Measurement window | Period needed for a representative outcome sample |
| Confirmation window | Additional period needed to show persistence |
| Earliest learning date | First date a trustworthy provisional result is possible |
| Acceptance date | Date the result can become accepted realized gain |

The complete planning quantity is **time to learning**, not only implementation
duration:

```text
Time to learning =
  build + test + ship + stabilize + measure + review
```

Time to confirmation adds the persistence window. Pareto priority should
consider contribution, confidence, effort, and time to learning together.

The weekly report should show where each selected intervention is in this
lifecycle and when the next trustworthy evidence is expected. This prevents
leaders from mistaking an intentionally quiet measurement window for stalled
work.

## Event-driven updates come first

Update the live ledger when any of these events occurs:

- authoritative outcome data changes materially;
- an intervention reaches a measurable result;
- realized gain differs materially from prediction;
- a dependency, overlap, or assumption changes;
- a guardrail is breached;
- credible remaining impact falls below the outstanding target;
- a new high-impact candidate appears;
- the target, horizon, or measurement source changes.

Recommended default:

1. Record the event and evidence within one working day.
2. Complete the result review within two working days after the planned
   measurement window produces trustworthy evidence.
3. Recalculate coverage and priority within five working days, sooner when a
   guardrail or committed target is at risk.

These are starting defaults, not universal service levels. Safety-critical and
high-velocity systems may require immediate action. Slow scientific,
organizational, or fundamentals work may require longer measurement windows.

## Separate reporting from source-of-truth updates

The stack ledger is the source of truth. Reports and meetings are views over
the current ledger.

Do not:

- wait for the weekly report to record a material result;
- reconstruct the month from memory before a leader meeting;
- copy numbers into disconnected reports;
- report completed work as impact;
- hide stale measurements behind a recent status date.

Every report states:

- when the outcome was last measured;
- when the ledger was last updated;
- which results remain provisional;
- which assumptions or estimates are stale.

## Weekly rhythm: operational control

The weekly rhythm answers:

1. Did the outcome move?
2. What became measurable?
3. What did we learn?
4. Does the remaining stack still add up?
5. What changes this week?
6. What needs escalation?

### Weekly preparation

Intervention owners update the ledger before the report is generated. The
report should be short because the evidence already exists.

### Weekly decisions

- accept, reject, or hold provisional realized gains;
- revise impact and confidence estimates;
- reorder candidates;
- add or retire work;
- escalate dependencies or guardrail risks;
- identify decisions needed from the monthly outcome owner.

### Weekly measures

| Measure | Purpose |
|---|---|
| Current outcome versus baseline and target | Shows actual progress |
| Accepted realized gain | Separates impact from activity |
| Outstanding impact | Shows what remains |
| Credible remaining impact | Tests whether the plan still adds up |
| Stack Coverage Ratio | Exposes fragility |
| Forecast variance | Improves estimation |
| Interventions by lifecycle phase | Separates implementation progress from measurable outcomes |
| Next trustworthy evidence date | Makes measurement lag explicit |
| Oldest unexplained result | Exposes learning delay |
| Stale candidate count | Exposes neglected assumptions |
| Guardrail state | Prevents local optimization |

Use [`templates/weekly-report.md`](../templates/weekly-report.md).

## Monthly rhythm: outcome-owner decisions

The monthly meeting is not a line-by-line project update. The leader receives
the weekly reports and current ledger beforehand.

The meeting answers:

1. Is the target still important and correctly measured?
2. Is progress real, persistent, and within guardrails?
3. Does the remaining portfolio credibly reach the target?
4. What did forecast variance teach us about the system?
5. Which cross-team decisions, resources, or constraints require leadership?
6. Should the target, portfolio, or horizon change?

### Monthly decisions

- continue the current portfolio;
- fund, staff, or unblock a high-impact intervention;
- stop low-value work;
- accept a staged target;
- revise constraints or horizon explicitly;
- commission new discovery because the stack is insufficient;
- confirm that the target is reached and sustained.

The leader should distinguish:

- work not yet shipped;
- work shipped but still stabilizing;
- work inside its measurement window;
- provisional gain awaiting confirmation;
- accepted realized gain.

A monthly review must not force a provisional result merely because the meeting
date arrives first.

Use [`templates/monthly-outcome-review.md`](../templates/monthly-outcome-review.md).

## Quarterly or horizon rhythm: calibrate the method

Longer reviews examine the quality of the planning system, not only the current
target.

Review:

- prediction accuracy by intervention type;
- systematic optimism or pessimism;
- confidence calibration;
- repeated overlap and dependency errors;
- time from result availability to ledger update;
- time from learning to re-stack;
- recurring guardrail or externality failures;
- which fields or meetings create work without changing decisions.

Retire ceremony that does not improve decisions. Update templates and guidance
when repeated learning shows the model itself is wrong.

## Rhythm profiles

### High-velocity or high-risk

- outcome data: continuous or daily;
- ledger updates: event-driven;
- operational review: daily or twice weekly;
- written report: weekly;
- outcome-owner review: monthly or on material risk;
- calibration: quarterly.

Examples: production performance, live reliability, incident reduction.

### Standard delivery

- outcome data: weekly;
- ledger updates: event-driven;
- written review: weekly;
- outcome-owner review: monthly;
- calibration: quarterly.

Examples: quality improvement, capacity work, delivery flow.

### Slow-learning or fundamentals

- outcome data: when evidence becomes valid;
- ledger updates: event-driven;
- working review: biweekly or monthly;
- outcome-owner review: monthly or quarterly;
- calibration: at major evidence milestones.

Examples: architecture fundamentals, organizational change, long-cycle risk
reduction.

Slow measurement does not justify stale assumptions. Execution, dependencies,
and new evidence still update when they change.

## Timeliness measures

Track the health of the operating rhythm:

```text
Update latency = ledger update time - material event time
Learning latency = completed result review time - trustworthy result time
Decision latency = decision time - escalation-ready time
Re-stack latency = revised stack time - accepted learning time
```

Also track:

- planned versus actual time to learning;
- interventions waiting for a valid measurement window;
- provisional gains waiting for confirmation;
- percentage of active candidates with current estimates;
- percentage of measurable results with completed reviews;
- age of unexplained variance;
- percentage of leader decisions closed by the next review;
- forecast accuracy and confidence calibration over time.

Do not optimize these measures blindly. Faster updates that use untrustworthy
data or bypass safety review are not improvements.

## Minimum rhythm contract

Every Stack & Track effort records:

| Field | Decision |
|---|---|
| Outcome data refresh | |
| Event update expectation | |
| Working review cadence | |
| Written report cadence | |
| Outcome-owner review cadence | |
| Calibration cadence | |
| Materiality threshold | |
| Guardrail escalation path | |
| Decision rights | |
| Source-of-truth location | |

The rhythm succeeds when evidence changes decisions while there is still time
to affect the outcome.
