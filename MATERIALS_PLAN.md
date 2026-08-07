# Materials Plan

## Purpose

Build a documentation-first body of material that lets a new practitioner:

1. understand Stack & Track in less than ten minutes;
2. start a credible stack in one working session;
3. prove whether a plan adds up;
4. track predicted and realized gains;
5. learn from variance and re-stack;
6. use an AI assistant without surrendering measurement or decision authority.

Repository activity, document count, and template completion are not success
metrics. Success means practitioners can make better outcome plans and update
them from observed results.

## Material design rules

Every published artifact must:

- use the canonical vocabulary from `METHODOLOGY.md`;
- distinguish activity, predicted impact, and realized impact;
- expose units, confidence, overlap, dependencies, and uncertainty;
- avoid presenting illustrative numbers as empirical proof;
- work without custom software;
- state when domain expertise or safety review is required;
- be short enough for its intended working context;
- link to the next action a practitioner should take.

## Release 0.1: Minimum usable kit

The first release is intentionally smaller than the full catalog.

| Artifact | User need | Acceptance condition |
|---|---|---|
| `QUICKSTART.md` | Understand and begin quickly | A new user can create a first stack in one working session |
| `templates/stack-canvas.md` | Capture target and candidates | Includes baseline, target, unit, horizon, source, impact, confidence, overlap, dependencies, and owner |
| `templates/stack-ledger.md` | Track the live portfolio | Keeps predicted impact, credible impact, status, realized gain, variance, and current priority together |
| `templates/result-review.md` | Learn from completed work | Captures predicted gain, realized gain, variance, explanation, transferable learning, and re-stack decisions |
| `examples/performance-10-to-8.md` | See additive improvement | Arithmetic reproduces and overlapping gains are explicit |
| `examples/reliability-95-to-99.md` | See percentage improvement | Converts availability into downtime and explains the bounded stack |
| `examples/incident-impact-minutes.md` | See operational prioritization | Ranks causes by pain rather than incident count alone |

Release 0.1 reaches fixed point when all seven artifacts pass the required role
review and at least one person other than the author can complete the quick
start without verbal reconstruction of missing steps.

## Wave 1: Teach the method

### Deliverables

- `QUICKSTART.md`: one-session path from target to first review.
- `PRINCIPLES.md`: non-negotiable doctrine and the reasons behind it.
- `GLOSSARY.md`: canonical terms and prohibited ambiguities.
- Expanded `METHODOLOGY.md`: formulas, decision rules, and bounded-metric
  treatment.
- `FAQ.md`: common objections and misunderstandings.

### Required topics

- plans that do not add up;
- the Stack Coverage Ratio;
- why 2x is an aspiration rather than dogma;
- nominal versus credible impact;
- Pareto selection;
- predicted versus realized gain;
- positive and negative variance;
- learning propagation;
- re-stacking triggers;
- targets near ceilings or floors.

### Exit gate

A reader can explain the loop, identify an insufficient plan, and distinguish a
completed action from a realized gain.

## Wave 2: Show the method

Every worked example uses the same structure:

```text
Context
Baseline
Target
Required impact
Candidate stack
Confidence and overlap adjustments
Pareto selection
Tracking plan
Illustrative realized results
Variance analysis
Learning propagation
Re-stack
Pitfalls
```

Illustrative results must be labeled as such. Case studies based on real work
must describe the measurement and attribution limits.

### Canonical examples

| Example | Central lesson |
|---|---|
| Performance: 10 seconds to 8 seconds | The proposed gains must add up, with credible surplus when feasible |
| Reliability: 95% to 99% | Percentage points conceal an 80% reduction in downtime |
| High reliability: 99.9% to 99.999% | Near a ceiling, use loss units and independent solution paths |
| Incident management | Rank recurring causes by customer-impact minutes, frequency, severity, and preventability |
| Fundamentals | Translate structural work into observable risks or recurring failures removed |
| Quality | Separate defects detected, defects prevented, and escaped defects |
| Cost | Reject savings created by shifting cost, risk, or toil |
| Capacity | Model bottlenecks, non-additivity, and changing constraints |
| Delivery | Reduce lead time without hiding quality or safety regressions |

### Exit gate

At least three examples demonstrate additive, bounded, and structural outcomes
without changing the core method.

## Wave 3: Practice the method

### Templates

- Stack canvas
- Outcome statement
- Candidate intervention card
- Impact and confidence rubric
- Overlap and dependency matrix
- Pareto selection record
- Predicted-versus-realized ledger
- Result review
- Learning propagation review
- Re-stack decision record
- Weekly operating review
- Outcome-owner review

### Formats

Start with Markdown. Add portable CSV and JSON representations only after the
Markdown fields reach fixed point. Spreadsheet variants may be supplied for
convenience, but no proprietary format becomes canonical.

### Exit gate

A team can run one complete loop using only repository materials and its
existing document or issue-tracking tools.

## Wave 4: Compare and troubleshoot

### Technique companions

Explain how Stack & Track strengthens rather than replaces:

- OKRs;
- roadmaps;
- Agile backlogs;
- Pareto analysis;
- root-cause analysis;
- project plans;
- dashboards and KPIs;
- SLOs and error budgets;
- risk registers;
- Lean and Six Sigma.

### Anti-pattern catalog

- target without sufficient impact coverage;
- activity presented as outcome;
- exactly 1x nominal coverage with no contingency;
- double-counted or dependent gains;
- confidence omitted from estimates;
- static priorities after new evidence;
- wins studied while misses are hidden;
- metric movement without attribution;
- averages hiding tail or cohort harm;
- reclassification presented as improvement;
- local gains created by shifted cost, risk, or toil;
- 2x applied mechanically to a bounded metric.

### Exit gate

A practitioner can diagnose why an apparently reasonable plan is unlikely to
reach its target and identify the Stack & Track correction.

## Wave 5: Enable responsible AI use

### Materials

- Prompt for turning a target into a candidate stack
- Prompt for arithmetic, overlap, and dependency review
- Prompt for Pareto selection
- Prompt for result and variance analysis
- Prompt for applying learning to remaining candidates
- Prompt for re-stacking
- Complete example conversation
- Portable Markdown and JSON field definitions

### AI boundary

AI may organize information, propose candidates, test arithmetic, challenge
assumptions, and draft updates. It may not invent measurements, claim
attribution without support, conceal uncertainty, or assume decision authority.

### Exit gate

The same input produces an inspectable stack whose numbers, assumptions, and
changes remain understandable without the AI conversation.

## Wave 6: Adoption and software decision

### Adoption materials

- Facilitator guide for a first working session
- Team operating cadence
- Outcome-owner review guide
- Case-study template
- Practitioner feedback form
- Method maturity model
- Adoption and failure-mode FAQ

### What to learn

- Which fields practitioners consistently misunderstand
- Which calculations are repeatedly performed incorrectly
- Where existing tools create friction
- Whether AI prompts are sufficient
- Which information must move between systems
- Which repeated problem, if any, warrants deterministic tooling

### Software admission

Rust tooling remains deferred. A software work package may be proposed only
after repeated use demonstrates a concrete problem that current documents,
spreadsheets, issue trackers, and AI prompts do not solve adequately.

Candidate tooling could validate arithmetic, detect overlap, calculate coverage,
or preserve a portable history. These are hypotheses, not approved features.

## Proposed repository shape

```text
examples/
prompts/
templates/
guides/
context/
  role-reviews/
METHODOLOGY.md
MATERIALS_PLAN.md
PRINCIPLES.md
QUICKSTART.md
GLOSSARY.md
FAQ.md
```

## Sequencing rule

Do not build the entire catalog before testing the minimum usable kit. Complete
Release 0.1, observe real use, apply the learning to this plan, and re-prioritize
the remaining material.
