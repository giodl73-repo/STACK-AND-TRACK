# Portable Model

The portable JSON model supports interchange between documents, spreadsheets,
issue trackers, and AI assistants.

Files:

- [`stack-and-track.schema.json`](stack-and-track.schema.json): JSON Schema
  describing the current portfolio snapshot.
- [`example-performance.json`](example-performance.json): illustrative model
  for the 10-second to 8-second performance example.
- [`common.schema.json`](common.schema.json): shared source, evidence,
  guardrail, and human-acceptance types for review packets.
- [`result-review.schema.json`](result-review.schema.json): portable
  prediction-versus-result learning packet.
- [`role-review.schema.json`](role-review.schema.json): portable `.roles`
  disposition, finding, dissent, defer, and fixed-point packet.
- [`SCHEMA_DESIGN.md`](SCHEMA_DESIGN.md): scope, invariants, versioning, and
  explicit non-goals.

Examples:

- [`examples/result-review.json`](examples/result-review.json)
- [`examples/role-review.json`](examples/role-review.json)

## Design rules

- Preserve original and revised predictions.
- Label every material value by source type.
- Keep provisional and accepted results separate.
- Store evidence references rather than unsupported assertions.
- Preserve candidate, decision, and re-stack history.
- Preserve goal versions and transfer decisions.
- Record the outcome denominator, material cohorts, and staged exposure.
- Keep aggregate results and cohort regressions separately inspectable.
- Treat calculated fields as reproducible snapshots, not authority.
- Use `null` for unknown values; never substitute zero.

The model is optional. Markdown remains a first-class format.
