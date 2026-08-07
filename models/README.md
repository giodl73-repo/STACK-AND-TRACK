# Portable Model

The portable JSON model supports interchange between documents, spreadsheets,
issue trackers, and AI assistants.

Files:

- [`stack-and-track.schema.json`](stack-and-track.schema.json): JSON Schema
  describing the record.
- [`example-performance.json`](example-performance.json): illustrative model
  for the 10-second to 8-second performance example.

## Design rules

- Preserve original and revised predictions.
- Label every material value by source type.
- Keep provisional and accepted results separate.
- Store evidence references rather than unsupported assertions.
- Preserve candidate, decision, and re-stack history.
- Treat calculated fields as reproducible snapshots, not authority.
- Use `null` for unknown values; never substitute zero.

The model is optional. Markdown remains a first-class format.
