# Progress Curves Role Review

Date: 2026-08-06

Reviewed artifacts:

- `guides/progress-curves.md`
- `templates/progress-curve.md`
- progress-curve changes in `METHODOLOGY.md`
- progress and confidence changes in `templates/weekly-report.md`
- progress and confidence changes in `templates/monthly-outcome-review.md`

## Parliament review

| Role | Result | Note |
|---|---|---|
| Outcome Steward | pass | Required, forecast, provisional, and accepted curves remain in the outcome unit and connect to the target horizon. |
| Stack Accountant | pass | Temporal Coverage Ratio and required remaining rate expose portfolios that add up only at the final date or rely on perfect late delivery. |
| Pareto Prioritizer | pass | Learning-now, landing-soon, structural-later, and contingency lanes balance contribution, timing, learning, and resilience without starting everything. |
| Attribution Skeptic | pass | Provisional movement is separate from accepted movement, and meaningful evidence does not automatically become outcome gain. |
| Learning Loop Steward | pass | Early evidence and missed checkpoints trigger forecast revision, contingency decisions, and re-stacking while time remains. |
| Constraint Realist | pass | Linear, front-loaded, back-loaded, S-shaped, and stepwise curves are explicit choices rather than a universal linear mandate. |
| Practitioner Advocate | pass | Weekly and monthly updates gain substantive evidence and decisions without requiring artificial positive movement every period. |

## Stakeholder review

| Role | Result | Note |
|---|---|---|
| Outcome Owner | pass | Monthly reviews now produce a leadership confidence case across outcome, sufficiency, forecast quality, learning responsiveness, and governance. |
| Delivery Team | pass | Teams can report valid tests, provisional evidence, and lifecycle movement without claiming premature realized gain. |
| Operator | pass | Staggering is bounded by safe work-in-progress capacity, lifecycle sequencing, confirmation, and guardrails. |
| Affected User | pass | Accelerating a late portfolio cannot justify relaxing safety, quality, tail, cohort, or externality constraints. |
| AI Practitioner | defer | AI-generated curves and confidence narratives require future prompts that preserve source dates, assumptions, and provisional status. Destination: Wave 5 AI-material review. |

## Assurance review

| Role | Result | Note |
|---|---|---|
| Goodhart Auditor | pass | The guide explicitly rejects cosmetic straight lines, rewritten checkpoints, green-status theater, and manufactured weekly gains. |
| Safety and Externalities Steward | pass | Required-rate pressure cannot remove guardrails, overload the team, or force unconfirmed deployment impact. |

## Editorial review

| Role | Result | Note |
|---|---|---|
| Numeracy Checker | pass | Required rate, required remaining rate, Temporal Coverage Ratio, Horizon Coverage Ratio, and the 12-week example reproduce. |
| Scope Keeper | pass | Curve shapes are planning models, not guarantees; confidence remains a reasoned judgment rather than a synthetic score. |
| Clarity Editor | pass | The three curves, four portfolio lanes, and five confidence dimensions give weekly and monthly discussions distinct purposes. |

## Finding ledger

| Severity | Finding | Owner | Closure |
|---|---|---|---|
| major | Total target-date coverage could hide a portfolio with no early evidence and all impact concentrated at the end | maintainer | Closed by adding required, forecast, provisional, and accepted curves plus Temporal Coverage Ratio |
| major | Weekly and monthly reporting pressure could manufacture activity or provisional gains as progress | maintainer | Closed by defining meaningful evidence events while reserving curve movement for accepted realized gain |
| major | Monthly leadership reviews did not explicitly state whether confidence in reaching the target was increasing or decreasing | maintainer | Closed by adding a five-dimension confidence case and month-to-month confidence bridge |
| minor | High, medium, and low confidence labels require calibration in each operating environment | outcome owner | Preserve explicit reasons now; calibrate local thresholds from forecast and decision history |

## Disposition

No critical or major actionable finding remains. Progress curves, staggered
delivery, and the leadership confidence case are accepted at role-review fixed
point.

The AI Practitioner defer remains assigned to Wave 5. Rust tooling remains
deferred under the Software Admission Gate.
