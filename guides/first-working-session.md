# First Working Session

This guide helps a team create its first Stack & Track portfolio in 60 minutes.
It is a facilitated adoption guide, not the independent usability test.

## Before the session

The outcome owner brings:

- one real outcome;
- a baseline and target if known;
- the measurement source;
- relevant constraints and guardrails;
- people who understand the system and the work.

Prepare:

- [`QUICKSTART.md`](../QUICKSTART.md)
- [`templates/stack-canvas.md`](../templates/stack-canvas.md)
- [`templates/stack-ledger.md`](../templates/stack-ledger.md)
- [`templates/progress-curve.md`](../templates/progress-curve.md)

Do not prepare a preferred solution list that prevents broad candidate
discovery.

## Roles in the session

| Role | Responsibility |
|---|---|
| Outcome owner | Accepts target, measurement, constraints, and decisions |
| Facilitator | Maintains the method and timeboxes |
| Domain practitioners | Explain causes, mechanisms, estimates, and constraints |
| Recorder | Updates the canvas and preserves unknowns |
| Skeptic | Challenges arithmetic, overlap, attribution, and guardrails |

One person may hold more than one role, but the outcome owner should not be the
only skeptic.

## Agenda

### 0-10 minutes: establish the outcome

Complete:

```text
Move [metric] from [baseline] to [target] by [date],
measured by [source], without violating [guardrails].
```

Calculate required impact. Mark missing fields `unknown`; do not fill them with
guesses merely to continue.

Decision: Is the outcome clear enough to build a provisional stack?

### 10-25 minutes: build the broad candidate stack

Generate causes and interventions before ranking.

For each candidate, capture:

- mechanism;
- predicted impact or range;
- confidence and basis;
- dependencies and overlap;
- effort;
- time to learning;
- owner or required expertise;
- measurement plan;
- guardrail risk.

AI may propose candidates, but every AI value remains `proposed`.

### 25-40 minutes: test whether it adds up

Calculate:

- nominal impact;
- confidence adjustment;
- overlap and dependency adjustment;
- credible impact;
- Stack Coverage Ratio;
- sensitivity.

If coverage is below 1x, say so. Do not rescue the session with unsupported
estimates.

Decision: Is discovery needed before the target can be credibly committed?

### 40-50 minutes: Pareto-select and stagger

Choose a smallest credible first portfolio. Balance:

- learning now;
- landing soon;
- structural later;
- contingency.

Record build, test, ship, measurement, confirmation, and earliest-learning
dates.

Decision: What begins now, and what evidence arrives first?

### 50-60 minutes: establish the operating rhythm

Set:

- ledger owner;
- event-update expectation;
- weekly or working review cadence;
- monthly outcome-owner cadence;
- first measurement and result-review dates;
- open decisions and owners.

End with:

```text
Current coverage:
First portfolio:
First trustworthy evidence:
Largest unresolved uncertainty:
Decision needed next:
```

## Facilitator interventions

Interrupt when:

- activity is presented as impact;
- predicted impacts do not share the outcome unit;
- gains are silently double-counted;
- confidence has no basis;
- shipment is treated as realized gain;
- severe risks are buried inside an average;
- participants optimize the report rather than the outcome;
- the group refuses to record an unknown.

## Valid session outcomes

The session may end with:

- a supported first portfolio;
- an insufficient stack requiring discovery;
- an unclear target requiring outcome-owner work;
- a blocked effort requiring measurement or authority.

Only the first is execution-ready. The other outcomes are useful because they
prevent false commitment.

## After the session

Within one working day:

1. publish the canvas and ledger;
2. record unresolved findings and assumptions;
3. confirm owners and evidence dates;
4. schedule the first result review;
5. send participants the current model rather than a rewritten summary.
