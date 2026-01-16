# Versioning & Change History (SSOT)

This document is the **single source of truth (SSOT)** for how HLab records
versioning and change history. It applies to all repo documentation and policy
changes.

## 1) No Per-File Timestamps
- **We do NOT maintain per-file “last modified” timestamps** across the repo.
- Avoid churn: do not add or update timestamps in individual files as part of
  routine edits.

## 2) Canonical Change History
- **Canonical history = Git + PRs.**
- PRs are the authoritative record of *what changed* and *why*.
- Optional human-readable history is allowed **only if centralized**.

## 3) Optional Changelog (Single File Only)
- If we maintain a human-readable changelog, it **must be one file**:
  `docs/CHANGELOG.md`.
- Update the changelog **only** for user-facing or policy-facing changes.
- Do **not** update the changelog for micro-refactors, formatting, or noise.

## 4) Policy Versioning (Lightweight SemVer)
Use a lightweight semantic versioning scheme for project instructions/policies:
- **MAJOR**: breaking policy changes that invalidate existing workflows or
  require immediate team re-training.
- **MINOR**: new policy requirements or rules that are backwards-compatible but
  materially change expectations.
- **PATCH**: clarifications or wording changes with no behavioral impact.

## 5) PR Description Requirements (Audit-Safe)
PRs that touch policies/docs must include:
- **Goal** (1–3 lines)
- **Scope (files)**
- **Evidence** per SSOT
- **Risk Notes**
- **Rollback Plan**

### Evidence Rules
- **MODE:AUDIT** requires **PR diff only** as evidence.
- Commands/logs are **optional only if actually executed**.
- **Never fabricate** commands, logs, or outputs.
