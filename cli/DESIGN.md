# StackTrack CLI Design

Status: design fixed point; implementation admission deferred

## Frame

Documents, spreadsheets, and AI assistants already support Stack & Track. The
missing shared capability is a small deterministic check that answers:

1. Is this portable portfolio structurally and semantically coherent?
2. What does the current evidence say about outcome and temporal coverage?
3. Which schedule, evidence, guardrail, or arithmetic conditions need human
   attention?

```text
working Stack & Track records
+ deterministic local diagnostics
-> faster review without replacing human judgment
```

The proposed binary is `stacktrack`. It reads the existing portable JSON
snapshot and writes findings or a status report. It does not become the system
of record.

The thesis is falsified if the CLI:

- requires practitioners to abandon documents or spreadsheets;
- produces a score that substitutes for inspecting the evidence;
- cannot explain every calculation and finding;
- needs network access or a service to check a local file;
- creates more maintenance than repeated arithmetic and schedule review;
- fails to improve independent-human completion or error-detection evidence.

## Owner boundaries

| Owner | Retains authority |
|---|---|
| Outcome owner | Target, authoritative measurement, acceptance, target revision, and tradeoffs |
| Delivery team | Estimates, assumptions, dependencies, timelines, and execution choices |
| Operators and affected users | Guardrail, rollout, cohort, safety, and rollback judgments |
| Method maintainers | Canonical formulas, schema versions, finding definitions, and compatibility |
| CLI | Deterministic validation, reproducible calculations, and evidence-linked diagnostics |

## Current workaround and candidate cost

Today a practitioner can validate JSON with a general JSON Schema tool, then
manually review dates, ratios, checkpoint curves, missing evidence, and
concentration risks. An AI assistant can help, but its answer is not guaranteed
to be deterministic between runs.

The candidate repeated costs are:

- recalculating baseline-to-target and remaining-rate arithmetic;
- comparing supplied ratios with their stated inputs;
- scanning timeline dates for impossible ordering or late confirmation;
- detecting past checkpoints with no accepted or provisional evidence;
- repeatedly checking source labels, unknown values, guardrails, and owners;
- creating the same weekly status summary from the same portable record.

These costs are plausible but not yet demonstrated by independent practitioner
evidence. That missing evidence blocks implementation admission.

## V1 command surface

```text
stacktrack lint <portfolio.json> [--format text|json] [--strict]
stacktrack status <portfolio.json> [--as-of YYYY-MM-DD]
                  [--rate-period day|week] [--format text|json]
stacktrack explain <finding-code>
stacktrack version
```

### `lint`

Runs JSON Schema validation followed by deterministic cross-field checks. It
does not change the input.

Default output is concise text for a terminal. `--format json` emits the stable
finding contract. `--strict` changes warnings to a failing process result; it
does not change finding severity.

### `status`

Reports evidence, not a synthetic health score:

- goal version, metric, baseline, current, target, unit, and target date;
- required and outstanding impact;
- stack and horizon coverage;
- latest passed checkpoint and next checkpoint;
- required, forecast, provisional, and accepted cumulative impact;
- checkpoint temporal coverage when both inputs are known;
- required remaining rate per requested presentation period;
- guardrail breaches and unknown guardrails;
- late confirmation, back-loading, missing evidence, and exposed-denominator
  conditions;
- decisions requiring an accountable owner.

If `--as-of` is omitted, the CLI uses the local calendar date and prints it.
It never silently substitutes the snapshot's `asOf` time for today.

The CLI does not interpolate between checkpoints. Between two checkpoints it
reports the latest passed checkpoint and the next declared checkpoint rather
than inventing a linear trajectory.

### `explain`

Prints the rule, calculation, why it matters, and expected correction for one
finding code. Explanations are shipped with the binary and require no network
access.

## Finding contract

```json
{
  "toolVersion": "0.1.0",
  "schemaVersion": "0.2",
  "file": "portfolio.json",
  "asOf": "2026-08-06",
  "findings": [
    {
      "code": "STT-TIME-004",
      "severity": "warning",
      "path": "/candidates/1/timeline/confirmationCompleteDate",
      "message": "Confirmation completes after the target date.",
      "evidence": {
        "confirmationCompleteDate": "2026-10-31",
        "targetDate": "2026-10-24"
      },
      "correction": "Revise the timeline, portfolio, target, or horizon explicitly."
    }
  ]
}
```

Severities:

| Severity | Meaning |
|---|---|
| error | The record is invalid or a deterministic contradiction prevents trustworthy calculation |
| warning | The record is valid but exposes a material coverage, timing, evidence, or guardrail risk |
| note | A useful observation that does not imply failure |

Finding codes are stable within a major CLI version:

```text
STT-SCHEMA-*  document and schema validity
STT-OUTCOME-* outcome arithmetic and direction
STT-STACK-*   coverage and portfolio arithmetic
STT-TIME-*    checkpoints and candidate timelines
STT-EVID-*    source, measurement, and acceptance evidence
STT-GUARD-*   portfolio and cohort guardrails
STT-GOAL-*    goal-version and transfer consistency
```

The JSON output is intended for AI assistants, editors, and CI systems. It is
not an API or event contract.

## Deterministic checks

### Schema and provenance

- validate against the supported portfolio schema;
- reject unsupported major schema versions;
- preserve `null` for unknown values;
- require source names for known material numbers;
- distinguish measured, human-provided, calculated, proposed, and unknown;
- print the age of the record and material measurements relative to `--as-of`.

V1 does not invent a universal staleness threshold. A future schema may declare
an expected measurement cadence or maximum evidence age; until then, age is a
fact rather than a warning.

### Outcome arithmetic

For a decrease target:

```text
required impact = baseline - target
outstanding impact = max(current - target, 0)
```

For an increase target:

```text
required impact = target - baseline
outstanding impact = max(target - current, 0)
```

The CLI errors when direction, baseline, and target contradict one another. It
compares supplied calculated snapshots with reproducible values using a
documented numeric tolerance.

### Coverage

When the required inputs are known:

```text
Stack Coverage Ratio =
  credible remaining impact / outstanding impact

Horizon Coverage Ratio =
  credible impact expected by target date / outstanding impact

Temporal Coverage Ratio =
  forecast credible cumulative impact / required cumulative impact
```

A zero outstanding impact is reported as `target reached`, not infinity.

The current schema does not encode enough semantics to reconstruct all overlap,
dependency, attribution, or diminishing-return adjustments. V1 therefore:

- verifies supplied ratios whose numerator and denominator are explicit;
- checks candidate-level arithmetic only when the record identifies a
  reproducible formula;
- emits `STT-STACK-OPAQUE` when a material calculated value cannot be
  independently reproduced;
- never invents overlap treatment from free text.

This is an intentional honesty boundary, not a reason to add a calculation
language before practitioner evidence requires one.

### Schedule and trajectory

- outcome start date is not after target date;
- trajectory dates are unique and ascending;
- declared checkpoints stay inside the outcome horizon;
- the trajectory includes a target-date checkpoint whose required cumulative
  impact reconciles to the required outcome impact;
- required cumulative impact is directionally nondecreasing;
- known forecast, provisional, and accepted cumulative curves do not move
  backward without an explicit goal change or correction record;
- known exposed-denominator values remain from zero through one and do not
  move backward without rollback evidence;
- candidate lifecycle dates follow build, test, ship, measure, learn, accept,
  and confirm order when those dates are present;
- measurement does not precede exposure or shipment;
- confirmation after the target date is a warning;
- a past checkpoint with unknown accepted and provisional evidence is a
  warning;
- a future checkpoint below 1x temporal coverage is a warning;
- insufficient horizon coverage remains visible even when the next checkpoint
  has temporal coverage above 1x;
- excessive late concentration is reported from declared dates and impact,
  never inferred from item count.

### Guardrails and human authority

- a breached guardrail is always visible in `status`;
- an unknown guardrail remains unknown, not acceptable;
- favorable global movement does not suppress a cohort breach;
- selected or active candidates without owners are warnings;
- an accepted result without an accountable accepter is an error;
- proposed decisions remain proposed;
- the CLI never changes acceptance, confidence, priority, or target state.

## Status language

The CLI may say:

- `target reached with confirmation pending`;
- `stack coverage is insufficient at 0.86x`;
- `next checkpoint forecast is above requirement, but accepted progress is
  unknown`;
- `confirmation extends seven days beyond the target date`;
- `cohort guardrail is breached`.

It may not say:

- `the program is 73% healthy`;
- `the target will be reached`;
- `approve this plan`;
- `candidate P-02 caused the observed gain`;
- `ignore this cohort because the aggregate is green`.

## Exit behavior

| Exit code | Meaning |
|---:|---|
| 0 | Command completed and no error findings were produced |
| 1 | One or more error findings were produced, or `--strict` found warnings |
| 2 | Invocation, file access, unsupported version, or internal tool failure |

Warnings do not fail by default because policy belongs to the caller. CI may
choose `--strict`.

## Security and privacy

V1:

- is local-only and performs no telemetry or network access;
- never follows evidence links or opens referenced files;
- does not print evidence content beyond values already required to explain a
  finding;
- supports `--format json` without embedding the full input record;
- avoids writing derived files unless stdout is explicitly redirected;
- treats paths and owner names as potentially sensitive terminal output.

The public repository includes only synthetic fixtures. Private portfolios
remain outside the repository.

## Comparison

| Existing approach | Reuse, adapt, or avoid | Decision |
|---|---|---|
| JSON Schema validator | reuse | Structural validation remains standards-based |
| Markdown and spreadsheet review | retain | They remain valid authoring and decision surfaces |
| AI review prompts | retain | AI can explain and propose, but deterministic checks should not vary by model |
| Project scheduler | avoid | StackTrack checks realization and evidence dates; it does not manage tasks or resources |
| Dashboard score | avoid | A single score hides arithmetic, uncertainty, and harmed cohorts |
| Calendar integration | defer | Reminders and meeting synchronization are not needed to prove the core check |
| Hosted service | avoid | It adds identity, privacy, availability, and maintenance without proving local value |
| Append-only history or event stream | defer | The admitted input is a current portable snapshot |

## Non-goals

V1 does not:

- edit or generate a portfolio;
- import Outlook, calendar, roadmap, backlog, or telemetry data;
- recommend or reorder candidates;
- accept results or waive guardrails;
- infer causal attribution;
- send reminders or notifications;
- host a dashboard or service;
- persist a database or event history;
- define organization policy;
- replace domain, safety, statistical, or program-management review.

## Smallest evidence slice

Implementation may begin only after the Software Admission Gate is cleared.
The first admitted slice would contain:

1. the existing synthetic `models/example-performance.json` input;
2. `lint` with JSON Schema validation and five cross-field rules;
3. `status --as-of 2026-08-06` with reproducible outcome and checkpoint facts;
4. one accepted run and structured failures for:
   - insufficient stack coverage;
   - confirmation after target;
   - unknown evidence at a passed checkpoint;
   - breached cohort guardrail;
   - opaque calculated impact;
5. golden text and JSON output fixtures;
6. no network, mutation, configuration file, plugin system, or package service.

The slice succeeds only if an independent practitioner detects or understands a
real planning error faster or more reliably than with the current materials.

The [paper prototype](PAPER_PROTOTYPE.md) executes this contract against the
current synthetic performance fixture without implementation code.

## Software Admission Gate

| Gate condition | Current evidence | Disposition |
|---|---|---|
| Repeated unmet practitioner problem | Plausible recurring calculations and reviews, but no independent repeated-use record | **open** |
| Transparent arithmetic and human review | Commands, formulas, explanations, and authority boundaries are designed | design pass |
| Optional portable data | Existing JSON Schema snapshot remains the only V1 input | design pass |
| No false precision | No score, interpolation, causal inference, or automatic decision | design pass |
| Bounded maintenance and validation | Two read-only commands, stable findings, golden fixtures, and local-only execution | design pass |

**Decision:** the CLI design is accepted for usability testing. Substantive
implementation remains deferred until repeated practitioner evidence closes
the first gate condition.

The cheapest next test is to run the same portfolio review manually with three
independent practitioners and record which deterministic errors recur, how
long they take to find, and whether AI prompts solve them consistently.

The bounded protocol and observation record are available in the
[Software Admission Test](ADMISSION_TEST.md).
