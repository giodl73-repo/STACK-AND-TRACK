# Result Review

## Intervention

| Field | Value |
|---|---|
| Intervention ID | |
| Intervention | |
| Owner | |
| Outcome metric | |
| Measurement source | |
| Baseline window | |
| Result window | |

## Prediction

| Field | Value |
|---|---|
| Original predicted gain | |
| Current predicted gain | |
| Confidence | |
| Expected mechanism | |
| Assumptions | |
| Dependencies | |
| Expected overlap | |
| Guardrails | |

## Result

| Field | Value |
|---|---|
| Realized gain | |
| Variance from current prediction | |
| Outcome after change | |
| Guardrail results | |
| Attribution confidence | |
| Evidence links | |

## Explain the variance

Check every plausible contributor.

- [ ] The original model was accurate.
- [ ] The effect was larger than expected.
- [ ] The effect was smaller than expected.
- [ ] A dependency amplified or reduced the gain.
- [ ] Another intervention overlapped with this result.
- [ ] A system bottleneck moved.
- [ ] Implementation differed from the assumed design.
- [ ] Measurement noise or seasonality affected the result.
- [ ] The result is not yet persistent.
- [ ] The metric improved while a guardrail worsened.

Explanation:

```text

```

## Transferable learning

| Question | Answer |
|---|---|
| What made the gain higher or lower? | |
| Which assumptions changed? | |
| Which remaining candidates share those assumptions? | |
| How should their impact estimates change? | |
| How should their confidence change? | |
| Did priorities change? | |
| Is a new candidate needed? | |

## Re-stack decision

| Field | Before review | After review |
|---|---:|---:|
| Current outcome | | |
| Outstanding impact | | |
| Credible remaining impact | | |
| Coverage ratio | | |

Decision:

- [ ] Continue current portfolio.
- [ ] Reorder candidates.
- [ ] Add candidates.
- [ ] Retire candidates.
- [ ] Revise the target through explicit outcome-owner review.
- [ ] Stop because the target is reached and sustained.

## Role checks

- [ ] Attribution Skeptic accepts the causal argument or its stated limits.
- [ ] Learning Loop Steward confirms learning was propagated.
- [ ] Stack Accountant confirms revised coverage.
- [ ] Goodhart Auditor confirms the real outcome improved.
- [ ] Safety and Externalities Steward confirms no unacceptable shifted harm.
