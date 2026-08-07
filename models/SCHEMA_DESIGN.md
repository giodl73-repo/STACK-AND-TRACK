# Portable Schema Suite

## Thesis

Working documents and spreadsheets already support Stack & Track. A small
portable schema suite adds a shared interchange contract so AI assistants and
ordinary validation tools can exchange the same evidence without replacing
those working surfaces.

The thesis is falsified if practitioners must distort their work to satisfy the
schema, cannot inspect the resulting JSON, or routinely require custom software
to use it.

## Owner-first model

```text
working documents, spreadsheets, and issue trackers
+ shared portable records
-> easier AI interchange, validation, and durable evidence
```

Outcome owners retain authority over targets, measurements, accepted results,
guardrails, portfolio decisions, and publication. The schemas do not make those
decisions.

## Schema set

| Schema | Purpose | Typical producer | Typical consumer |
|---|---|---|---|
| `common.schema.json` | Shared source labels, evidence references, guardrails, and sourced numbers for portable review packets | Review surfaces | Result and role-review schemas |
| `stack-and-track.schema.json` | Current portfolio snapshot | Canvas, ledger, spreadsheet, or AI assistant | Reviews, reporting, archival interchange |
| `result-review.schema.json` | One prediction-versus-result learning packet | Result review | Ledger update and re-stack |
| `role-review.schema.json` | Governed pass, finding, defer, dissent, and fixed-point record | `.roles` review | Maintainers and assurance history |

## Invariants

1. Unknown values remain `null`; they never become zero.
2. Every material number has a source type and named source unless unknown.
3. Proposed AI values remain `proposed` until a human or measurement source
   changes their status.
4. Provisional, accepted, rejected, no-gain, and regressed results remain
   distinct.
5. Portfolio movement remains authoritative; per-intervention attribution must
   reconcile to it.
6. Goal versions, denominators, cohorts, rollout exposure, and guardrails remain
   explicit.
7. A role review cannot claim fixed point while critical or major findings are
   open.
8. Human acceptance is represented explicitly; schema validity is not decision
   approval.

## Versioning

Each record has its own `schemaVersion`.

- Patch-compatible additions should be optional.
- A required-field, semantic, enum, or interpretation change increments the
  record schema version.
- Producers should preserve the original record when migrating.
- Consumers must reject unsupported major record versions rather than silently
  dropping fields.

The portfolio snapshot is version `0.2`. Result-review and role-review packets
begin at `0.1`.

The portfolio snapshot intentionally retains embedded common definitions so it
can validate as a single copied file. Review packet schemas use
`common.schema.json` to avoid repeating those types.

## Boundaries

The schema suite does not define:

- a database;
- an API;
- a workflow engine;
- an event bus;
- authentication or authorization;
- measurement collection;
- automatic attribution;
- decision authority;
- a proprietary file format.

An append-only event schema is intentionally deferred. The current need is
portable snapshots and review packets, not infrastructure.

## Comparison

| Comparator | Decision | Reason |
|---|---|---|
| [JSON Schema 2020-12](https://json-schema.org/draft/2020-12/json-schema-core) | reuse | It describes and validates JSON documents without prescribing storage, transport, or workflow |
| [OpenAPI](https://spec.openapis.org/oas/latest.html) | avoid for now | OpenAPI describes HTTP interfaces; Stack & Track has no admitted service API |
| [CloudEvents](https://github.com/cloudevents/spec/blob/main/cloudevents/spec.md) | defer | CloudEvents improves event interoperability, but no event producer, router, or append-only processing need has been proven |
| Markdown templates | retain as owner surface | They remain easier for many practitioners to inspect and edit |
| Spreadsheets | retain as owner surface | They remain useful for arithmetic, sorting, and portfolio discussion |

JSON Schema is the narrow shared capability. It does not centralize workflow,
measurement, rendering, publication, or review policy.

## Cheapest proof

The included example records must:

1. validate against their schemas;
2. preserve an unknown without converting it to zero;
3. show one accepted result;
4. show one structured role finding;
5. remain understandable without custom code.

The deletion gate for future schema fields is simple: remove any field that
does not support a repeated practitioner, AI-interchange, or assurance need.
