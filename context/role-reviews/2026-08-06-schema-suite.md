# Portable Schema Suite Role Review

Date: 2026-08-06

Reviewed artifacts:

- `models/SCHEMA_DESIGN.md`
- `models/common.schema.json`
- `models/stack-and-track.schema.json`
- `models/result-review.schema.json`
- `models/role-review.schema.json`
- `models/example-performance.json`
- `models/examples/result-review.json`
- `models/examples/role-review.json`

## Parliament review

| Role | Result | Note |
|---|---|---|
| Outcome Steward | pass | The portfolio and result records preserve goal version, outcome denominator, measurement source, owner, guardrails, and human acceptance. |
| Stack Accountant | pass | Material numbers remain sourced, unknown remains null, and portfolio-before and portfolio-after states are explicit. |
| Pareto Prioritizer | pass | The suite records decisions and learning without attempting to automate portfolio selection. |
| Attribution Skeptic | pass | Result packets separate attribution, authoritative outcome movement, exposure, evidence, cohorts, variance, and acceptance. |
| Learning Loop Steward | pass | A result packet contains changed assumptions, affected candidates, priority change, and before/after portfolio state. |
| Constraint Realist | pass | The suite avoids a database, API, event bus, workflow engine, and executable checker. |
| Practitioner Advocate | pass | Markdown and spreadsheets remain owner surfaces; JSON is optional interchange rather than required ceremony. |

## Stakeholder and assurance review

| Role | Result | Note |
|---|---|---|
| Outcome Owner | pass | Schema validity cannot accept a target or result; human acceptance remains explicit. |
| Delivery Team | pass | Proposed estimates, unknowns, no-gain, rejected, and regressed results remain representable without becoming promises. |
| Operator | pass | Rollout exposure, guardrails, evidence, and cohort results are portable. |
| Affected User | pass | Cohort-local and weighted results remain separately inspectable. |
| AI Practitioner | pass | The records provide stable structured input and output while retaining source labels and decision boundaries. |
| Goodhart Auditor | pass | A valid JSON document is not treated as proof that the outcome moved. |
| Safety and Externalities Steward | pass | Guardrails and evidence references remain attached to results. |

## Editorial review

| Role | Result | Note |
|---|---|---|
| Numeracy Checker | pass | Portfolio, result-review, and role-review examples validate under JSON Schema 2020-12. Structured invalid examples are rejected. |
| Scope Keeper | pass | JSON Schema is reused for document validation; OpenAPI is avoided and CloudEvents is deferred because no API or event system is admitted. |
| Clarity Editor | pass | Snapshot, result review, and role review have distinct record purposes and versions. |

## Finding ledger

| Severity | Finding | Owner | Closure |
|---|---|---|---|
| major | A schema suite could become an implicit software platform | maintainer | Closed with explicit non-goals and retention of Markdown and spreadsheets as owner surfaces |
| major | Unknown numeric values could silently become zero | maintainer | Closed with conditional sourced-number validation and a rejected invalid fixture |
| major | A result could be marked accepted without human acceptance | maintainer | Closed with a conditional result-review invariant |
| major | A role review could claim fixed point while reporting an open major count | maintainer | Closed with a fixed-point conditional and rejected invalid fixture |
| major | A role disposition marked finding could omit its structured finding | maintainer | Closed with conditional minimum findings |
| major | Event and API contracts would be premature | maintainer | Closed by deferring CloudEvents and avoiding OpenAPI until a real transport need exists |

## Evidence slice

Accepted records:

- current portfolio snapshot;
- accepted result-review packet;
- role-review packet with one closed major finding and visible defer.

Structured failures:

- unknown value represented as zero;
- fixed point with a nonzero open-major count.

## Disposition

No critical or major actionable finding remains. The portable schema suite is
accepted at role-review fixed point.

The suite does not clear the Software Admission Gate. It is a set of optional
portable documents, not an executable product.
