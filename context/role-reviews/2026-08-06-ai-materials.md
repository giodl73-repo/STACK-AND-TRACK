# AI Materials Role Review

Date: 2026-08-06

Reviewed artifacts:

- `AI_GUIDE.md`
- `prompts/`
- `models/README.md`
- `models/stack-and-track.schema.json`
- `models/example-performance.json`

## Parliament review

| Role | Result | Note |
|---|---|---|
| Outcome Steward | pass | AI prompts cannot proceed silently past missing outcome fields and must identify the human or source needed to resolve them. |
| Stack Accountant | pass | Review prompts reproduce arithmetic, require inspectable adjustments and sensitivity, and prohibit unsupported coverage. |
| Pareto Prioritizer | pass | AI may propose a smallest credible portfolio but cannot approve it or delete alternatives. |
| Attribution Skeptic | pass | Portfolio movement remains primary, item gains remain a reconciling attribution model, and provisional results stay separate. |
| Learning Loop Steward | pass | Result and re-stack prompts propagate accepted learning while preserving original predictions and revision history. |
| Constraint Realist | pass | Unknown values remain null, assumptions stay labeled, and AI cannot waive guardrails or force false precision. |
| Practitioner Advocate | pass | Markdown remains first-class; JSON is optional and intended for interchange rather than mandatory workflow. |

## Stakeholder review

| Role | Result | Note |
|---|---|---|
| Outcome Owner | pass | Human acceptance is required for the target, measurement source, impact used for commitment, target changes, and leadership confidence. |
| Delivery Team | pass | AI-generated estimates default to proposed and cannot become promises or accepted results automatically. |
| Operator | pass | Lifecycle, stabilization, measurement, confirmation, guardrail, and release authority remain outside automatic AI control. |
| Affected User | pass | AI cannot waive tail, cohort, privacy, safety, or shifted-burden constraints. |
| AI Practitioner | pass | The guide defines allowed assistance, prohibited shortcuts, source labels, human checkpoints, and inspectable outputs. |

## Assurance review

| Role | Result | Note |
|---|---|---|
| Goodhart Auditor | pass | Prompts reject generated green status, hidden denominator changes, activity-as-impact, and unsupported calculated coverage. |
| Safety and Externalities Steward | pass | Funding, staffing, release, safety, and policy decisions remain human decisions with explicit authority. |

## Editorial review

| Role | Result | Note |
|---|---|---|
| Numeracy Checker | pass | The example parses and validates against the schema; calculated fields identify their inputs, and unknown values cannot masquerade as zero. |
| Scope Keeper | pass | The materials position AI as a structuring and challenge aid, not a measurement source, causal authority, or autonomous manager. |
| Clarity Editor | pass | Five task-specific prompts share the same labels, output order, and human-decision boundary. |

## Finding ledger

| Severity | Finding | Owner | Closure |
|---|---|---|---|
| major | The first example snapshot claimed coverage from candidates absent from the JSON record | maintainer | Closed by recalculating the partial stack to 0.86x and explicitly marking it insufficient |
| major | A portable model could encode unknown values as numbers or known values without a source | maintainer | Closed with schema conditions requiring unknown values and sources to be null and all other numeric values to have a named source |
| major | AI assistance could silently turn proposed estimates into accepted commitments or realized gains | maintainer | Closed through source labels, prohibited shortcuts, explicit human checkpoints, result dispositions, and accepted-by fields |
| minor | Structural validation cannot prove that a source is authoritative or an attribution is true | practitioner | Preserve evidence references and require human and domain review outside the schema |

## Disposition

No critical or major actionable finding remains. The responsible AI guide,
prompt catalog, portable schema, and example are accepted at role-review fixed
point.

These materials do not clear the Software Admission Gate. Rust tooling remains
deferred.
