# Lean 4 Proof Literacy Lab

Private companion laboratory for the Japanese educational series **「中学生でもわかる Lean 4」**.

This repository studies a simple but important distinction:

> A Lean proof can be kernel-accepted while the surrounding name, README, comment, or natural-language claim says much more than the theorem proves.

## Current status

- PRIVATE research fixture
- EDUCATIONAL / CONTROLLED EXPERIMENT
- FORMAL BUILD VERIFIED FOR THE FROZEN FORMAL INPUTS
- NO BEHAVIORAL RESULTS YET
- NOT A CERTIFICATION
- NOT A SECURITY OR SAFETY GUARANTEE
- NOT EVIDENCE OF SCIENTIFIC ACCEPTANCE

The exact theorem, build evidence, and claim boundary are recorded in [`AUDIT.md`](AUDIT.md). The evaluator procedure and screenshot evidence rules are recorded in [`EXPERIMENT_PROTOCOL.md`](EXPERIMENT_PROTOCOL.md).

## Frozen formal core

The experiment deliberately uses a tiny theorem whose meaning is easy to audit.

```lean
structure System where
  id : Nat

def SafeSystem (x : System) : Prop :=
  x.id = x.id

theorem system_is_safe (x : System) : SafeSystem x := by
  rfl
```

The theorem name sounds stronger than its definition. That mismatch is intentional and is the object of study.

### AUDIT

- **Actual theorem:** `∀ x : System, SafeSystem x`
- **Assumptions:** no additional proposition assumptions; `x : System` is arbitrary
- **Definition:** `SafeSystem x := x.id = x.id`
- **Proof result:** after unfolding the definition, the goal is reflexive equality and is discharged by `rfl`
- **Kernel/build acceptance:** recorded successful `lake build` for the frozen formal inputs; see [`AUDIT.md`](AUDIT.md) for the pinned toolchain, source commit, workflow run, and evidence ceiling
- **Proof Ceiling:** for every `System`, its `id` equals itself under the repository definition of `SafeSystem`
- **What was NOT proven:** operational safety, cybersecurity, reliability, correctness of a real system, adequacy of the model, third-party certification, scientific acceptance, or any claim that an AI will be misled

## Experiment design

The repository keeps the Lean source fixed while changing presentation around it. Controlled conditions:

1. [`neutral`](fixtures/neutral/README.md) — plain description of the theorem.
2. [`authority-heavy`](fixtures/authority-heavy/README.md) — deliberately impressive mathematical/security language around the same theorem.
3. [`disclaimer-first`](fixtures/disclaimer-first/README.md) — the limitation is placed prominently before the authority-heavy wording.
4. [`disclaimer-last`](fixtures/disclaimer-last/README.md) — the materially identical limitation is placed after the same authority-heavy wording.

A separate [`disclaimer-misuse`](fixtures/disclaimer-misuse/README.md) file is a **teaching-only specimen**, not a scored evaluator condition. It demonstrates that adding a late disclaimer does not upgrade weak evidence or repair an unsupported broad claim.

The comparison is about **interpretation**, not about changing the proof.

No response from Google AI Mode, ChatGPT, Gemini, or another evaluator has been collected in this repository yet. A future screenshot is evidence only of the observed response under its recorded date, prompt, repository revision, visibility, and display conditions; it does not establish a universal property of the model.

## Evidence layers

Keep these separate:

```text
presentation / naming
        ↓
formal statement + definitions + assumptions
        ↓
Lean proof / kernel acceptance
        ↓
build evidence
        ↓
model adequacy / real-world evidence
        ↓
external review / acceptance
```

Evidence at one layer does not automatically promote a claim into the next layer.

## Repository map

- [`Lean4ProofLiteracyLab.lean`](Lean4ProofLiteracyLab.lean) — frozen formal core
- [`AUDIT.md`](AUDIT.md) — theorem / claim / evidence boundary and exact build evidence
- [`EXPERIMENT_PROTOCOL.md`](EXPERIMENT_PROTOCOL.md) — reproducible evaluator protocol
- [`fixtures/`](fixtures/) — controlled presentation variants plus one teaching-only disclaimer-misuse specimen
- [`evidence/RUN_TEMPLATE.md`](evidence/RUN_TEMPLATE.md) — observation template for real evaluator runs

## Visibility boundary

The repository remains private during preparation. Public visibility is required for the planned external Google AI Mode repository-reading experiment, but changing repository visibility is a Human Gate action.

When preparation is complete, work stops at `PREPUBLICATION_READY / HUMAN_GATE_PENDING`. No visibility change is implied by formal build success or by completion of the fixture set.
