# Progress Curves and Staggered Delivery

A portfolio can add up at the final date and still be badly managed through
time. If every intervention lands near the deadline, the team receives little
early evidence, has no time to recover from misses, and cannot provide
substantive weekly or monthly updates.

Stack & Track therefore tests two forms of sufficiency:

1. **Outcome sufficiency:** Can credible total impact reach the target?
2. **Temporal sufficiency:** Can credible impact and learning arrive early
   enough to manage the target?

## Three curves

Track three cumulative curves in the outcome unit.

| Curve | Meaning |
|---|---|
| Required trajectory | Minimum accepted progress by each checkpoint |
| Forecast realization | Credible impact expected to be accepted by each checkpoint |
| Accepted realization | Measured and confirmed impact accepted so far |

Provisional results may be shown separately, but they do not enter the accepted
curve until confirmation and guardrail review.

## Required rate

A simple average rate is a useful reference:

```text
Required average rate = required impact / available time
```

After each checkpoint:

```text
Required remaining rate = outstanding impact / remaining time
```

This is not a demand for linear progress. Reliability, architecture, policy,
and adoption work often produce stepwise or S-shaped curves. The rate exposes
how delay increases the burden on the remaining portfolio.

## Choose the curve shape explicitly

### Linear

Use when many independent, similarly sized interventions can land steadily.

### Front-loaded

Use when early risk reduction, confidence building, or customer relief matters
more than evenly distributed progress.

### Back-loaded

Use only when long build and confirmation windows make it unavoidable. Add
early evidence checkpoints and credible contingency because recovery time is
limited.

### S-curve

Use when early discovery and setup lead to faster middle-stage delivery before
the remaining hard tail slows progress.

### Stepwise

Use when discrete migrations, releases, policy changes, or architectural
cutovers produce measurable jumps.

The curve should represent the system and intervention lifecycle, not create a
cosmetic straight line for reporting.

## Temporal Coverage Ratio

At any checkpoint:

```text
Temporal Coverage Ratio =
  credible cumulative impact expected by the checkpoint
  / required cumulative impact by the checkpoint
```

Interpretation:

| Ratio | Meaning |
|---:|---|
| below 1x | Forecast progress is late or insufficient by that checkpoint |
| near 1x | Little schedule contingency |
| above 1x | Some timing resilience |

Also calculate horizon coverage:

```text
Horizon Coverage Ratio =
  credible impact expected by the target date
  / outstanding impact
```

A portfolio can have horizon coverage above 1x while temporal coverage is below
1x for most of the period. That plan may reach the target only if late work
performs perfectly.

## Stagger the intervention portfolio

Do not place every selected intervention in the same lifecycle phase. Maintain
a balanced pipeline:

| Lane | Purpose |
|---|---|
| Learning now | Small tests, discovery, or measurements that can revise the stack soon |
| Landing soon | Work expected to produce provisional or accepted gain in the next review periods |
| Structural later | Long-lead changes needed for the full target |
| Contingency | Alternatives ready if selected work misses or slips |

Stagger start, ship, measurement, and confirmation windows so evidence and
accepted gains arrive across the horizon.

Staggering does not mean starting everything. Excess work in progress increases
delay, dependencies, and operational risk. Select the smallest balanced
portfolio that maintains outcome and temporal coverage.

## Every period needs meaningful evidence, not fake impact

A weekly or monthly update is substantive when it contains at least one of:

- an accepted realized gain;
- a provisional result with a stated confirmation date;
- a completed test that changes confidence;
- a hypothesis supported or rejected;
- a dependency, overlap, or risk discovered;
- a candidate estimate revised;
- a guardrail result;
- a portfolio priority or decision changed;
- a shipped intervention entering a valid measurement window.

Only accepted realized gains move the accepted outcome curve. The other events
are valuable because they reduce uncertainty while there is still time to act.

## Example: 10 seconds to 8 seconds in 12 weeks

```text
Baseline: 10.0 seconds
Target: 8.0 seconds
Required reduction: 2.0 seconds
Horizon: 12 weeks
Linear reference rate: 2.0 / 12 = 0.167 seconds per week
```

The team chooses an S-shaped required trajectory:

| Week | Required cumulative reduction | Forecast credible cumulative reduction | Accepted cumulative reduction | Evidence expected |
|---:|---:|---:|---:|---|
| 0 | 0.0s | 0.0s | 0.0s | Baseline accepted |
| 2 | 0.2s | 0.3s | 0.0s | First experiment measured |
| 4 | 0.6s | 0.8s | 0.3s | Early intervention confirmed |
| 6 | 1.1s | 1.4s | 0.7s | Two portfolio results |
| 8 | 1.5s | 1.9s | 1.2s | Structural change measuring |
| 10 | 1.8s | 2.2s | 1.7s | Contingency decision |
| 12 | 2.0s | 2.4s | 2.0s | Target confirmation |

At week 6:

```text
Accepted reduction = 0.7 seconds
Outstanding reduction = 2.0 - 0.7 = 1.3 seconds
Remaining time = 6 weeks
Required remaining average rate = 1.3 / 6 = 0.217 seconds per week
```

The initial linear reference was 0.167 seconds per week. The required remaining
rate has increased by about 30%. The team must not merely report that work is in
progress. It re-tests temporal coverage, accelerates a high-confidence
candidate, and decides whether to start contingency work.

## Weekly use

The weekly review asks:

1. Where are required, forecast, provisional, and accepted curves now?
2. What is the required remaining rate?
3. Which result or evidence arrives next?
4. Are lifecycle phases staggered?
5. Is the portfolio too back-loaded?
6. Which intervention should accelerate, stop, or move?

## Monthly use

The outcome owner asks:

1. Is the target-date forecast still credible?
2. Has accepted progress remained below the required trajectory?
3. Is the required remaining rate realistic?
4. Does late concentration create unacceptable execution or confirmation risk?
5. Are resources aligned to the high-impact path?
6. Is a target, horizon, or portfolio decision needed now?

## Build leadership confidence each month

Leadership confidence should increase because the process repeatedly turns
evidence into better forecasts and decisions, not because every status is
reported green.

Each monthly review makes a **confidence case** across five dimensions:

| Dimension | Confidence evidence |
|---|---|
| Outcome movement | Accepted progress versus the required trajectory |
| Portfolio sufficiency | Temporal and horizon coverage, contingency, and concentration risk |
| Forecast quality | Prediction variance, confidence calibration, and known assumptions |
| Learning responsiveness | Time from trustworthy evidence to result review and re-stack |
| Governance health | Guardrails, decision closure, ownership, and unresolved dependencies |

Use `high`, `medium`, or `low` only with explicit reasons.

### High confidence

- accepted progress and forecast are consistent with the target trajectory;
- credible horizon coverage has meaningful resilience;
- lifecycle dates and confirmation windows fit inside the horizon;
- recent predictions are reasonably calibrated;
- misses produce timely learning and portfolio changes;
- guardrails are healthy and leadership decisions close on time.

### Medium confidence

- the target remains plausible, but temporal coverage is near 1x;
- one or more material assumptions, dependencies, or confirmation windows remain
  unresolved;
- the required remaining rate is achievable but increasing;
- contingency exists but may need a decision soon.

### Low confidence

- accepted or forecast progress is materially below the required trajectory;
- credible remaining impact does not cover the outstanding target;
- impact is dangerously concentrated near the target date;
- forecasts repeatedly miss without useful recalibration;
- guardrails, dependencies, or leadership decisions remain unresolved;
- confirmation cannot complete within the horizon.

Every monthly review includes a confidence bridge:

```text
Previous confidence:
Current confidence:
What increased confidence:
What reduced confidence:
Evidence expected before the next review:
Leadership decisions required:
Condition that would change confidence:
```

Confidence can rise even before major outcome movement when early experiments
retire important uncertainty, demonstrate mechanisms, and improve forecast
calibration. It should fall when work ships without measurable evidence,
forecasts become more back-loaded, or decisions remain open.

## Curve management rules

1. Define the target trajectory before using it to judge progress.
2. Do not rewrite past checkpoints to make the curve appear green.
3. Keep forecast, provisional, and accepted movement separate.
4. Recalculate the required remaining rate after every accepted result or target
   change.
5. Treat missed early checkpoints as a portfolio signal, not a reporting
   problem.
6. Preserve time for measurement and confirmation before the target date.
7. Do not compensate for delay by removing guardrails or assuming every late
   intervention succeeds.
8. Change the curve explicitly when new evidence changes the expected outcome
   shape.

## Timeliness without theater

The goal is not to manufacture something positive to say each week. The goal is
to produce a steady flow of evidence, decisions, and measured improvements
early enough to manage the target.

If a period produces no result, no evidence, no revised assumption, and no
decision, the portfolio is either poorly staggered, insufficiently measured, or
not being actively managed.
