# Multi-Metric Outcomes

Many efforts affect performance, reliability, cost, safety, quality, and user
experience at once. Do not add incomparable units into one synthetic impact
number without an explicitly accepted model.

## Preferred structure

1. Choose one primary outcome for the target.
2. Keep required impact and coverage in that unit.
3. Define other essential metrics as guardrails or secondary outcomes.
4. Maintain separate stacks when multiple outcomes each require independent
   commitment.

Example:

```text
Primary outcome: reduce p95 latency from 10s to 8s
Guardrails:
- p99 latency does not worsen
- error rate does not worsen
- cost per request increases by no more than 5%
- no major customer cohort regresses
```

## When a composite is appropriate

Use a composite only when:

- decision authority accepts the formula;
- units, weights, and tradeoffs are explicit;
- affected stakeholders and assurance roles review it;
- sensitivity to weights is shown;
- raw component metrics remain visible.

Do not create a composite merely to make every candidate comparable.

## Qualitative and severe evidence

Qualitative customer pain, legal duties, safety constraints, and catastrophic
risks may override the primary numerical order. Keep them visible as:

- guardrails;
- explicit decision constraints;
- separate risk stacks;
- named stakeholder findings.

Do not assign invented dollar values or impact points merely to force a common
unit.
