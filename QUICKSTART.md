# Stack & Track Quick Start

Use this guide to build a first stack in one working session.

## What you need

- one outcome you want to change;
- a baseline and target in the same unit;
- an authoritative measurement source;
- people who understand the work and the system;
- 45 to 60 minutes.

## 1. Write the outcome

Complete this statement:

```text
Move [metric] from [baseline] to [target] by [date],
measured by [source], without violating [constraints].
```

Example:

```text
Move p95 request latency from 10 seconds to 8 seconds by September 30,
measured by production telemetry, without increasing error rate or cost
per request by more than 5%.
```

Calculate the required impact:

```text
Required reduction = 10 seconds - 8 seconds = 2 seconds
```

Stop if the baseline, target, unit, horizon, or measurement source is unclear.

## 2. Build the candidate stack

List every plausible intervention before choosing favorites. For each candidate,
record:

- predicted impact in the outcome unit;
- confidence from 0 to 100%;
- evidence or assumption behind the estimate;
- effort and time to value;
- dependencies;
- overlap with other candidates;
- owner;
- measurement method.

Do not silently convert guesses into facts. A rough estimate with an explicit
assumption is more useful than false precision.

## 3. Test whether the plan adds up

Start with nominal coverage:

```text
Nominal coverage = sum of predicted impacts / required impact
```

Then calculate credible impact by reducing estimates for confidence, overlap,
dependencies, and diminishing returns.

```text
Stack Coverage Ratio = credible planned impact / required impact
```

Interpretation:

| Coverage | Meaning |
|---:|---|
| below 1x | The plan cannot credibly reach the target |
| near 1x | The plan is fragile and has little contingency |
| above 1x | The plan has some resilience |
| near 2x | Strong surplus coverage when physically and economically feasible |

Two times coverage is an aspiration, not a law. Near a hard ceiling or floor,
use independent solution paths and the underlying loss unit instead of
impossible arithmetic.

## 4. Pareto-prioritize

Choose the smallest credible portfolio that can reach the target.

Prefer candidates with:

- large expected contribution;
- high confidence;
- low overlap;
- reasonable effort;
- appropriate time to learning, including build, test, ship, stabilization, and
  measurement;
- acceptable safety and externality risk.

Keep unselected candidates visible as alternatives. Do not delete the rest of
the stack merely because they are not first.

## 5. Define tracking before execution

For each selected intervention, state:

- build, test, ship, stabilization, measurement, and confirmation windows;
- the earliest date a trustworthy provisional result is possible;
- the date a persistent result can be accepted;
- when measurement begins and ends;
- what comparison establishes the baseline;
- what other changes could affect the result;
- how safety, quality, cost, and affected-user constraints will be checked;
- what result would count as no gain or regression.

## 6. Record every result

Use this chain:

```text
Predicted gain -> Realized gain -> Variance -> Explanation -> Learning
```

Completion is not a gain. A gain exists only when the outcome changes and the
attribution argument is credible.

A shipped intervention may remain in `stabilizing`, `measuring`, or
`confirming` status. Do not accept realized gain before its evidence window is
valid.

## 7. Apply the learning

When realized gain is higher than predicted, identify amplifiers.

When it is lower, inspect:

- incorrect assumptions;
- hidden dependencies;
- overlap;
- implementation quality;
- measurement noise;
- system bottlenecks;
- diminishing returns.

Apply the finding to every remaining candidate, not only the completed item.

## 8. Re-stack

Update predicted impact, confidence, overlap, and priority. Recalculate the
coverage ratio against the outstanding target.

Add candidates when credible remaining impact no longer supports the target.
Stop when the measured outcome reaches the target and remains within its
constraints, or explicitly revise the target with the same rigor.

## Session output

At the end of the first session, you should have:

1. an outcome statement;
2. a candidate stack;
3. a coverage calculation;
4. a selected first portfolio;
5. a measurement plan;
6. a date for the first result review.

Use:

- [`templates/stack-canvas.md`](templates/stack-canvas.md)
- [`templates/stack-ledger.md`](templates/stack-ledger.md)
- [`templates/result-review.md`](templates/result-review.md)
