# Lean 4 Proof Literacy Lab

Public companion laboratory for the Japanese educational series **「中学生でもわかる Lean 4」**.

This repository studies a simple but important distinction:

> A Lean proof can be kernel-accepted while the surrounding name, README, comment, or natural-language claim says much more than the theorem proves.

## Current status

- PUBLIC educational / controlled experiment
- FORMAL BUILD VERIFIED FOR THE FROZEN FORMAL INPUTS
- PUBLIC READBACK VERIFIED FOR DEFAULT BRANCH REVISION `8d8d5c38b57eabc31e08a72813412f729331edff`
- FIRST JAPANESE REPOSITORY-ROOT EVALUATOR OBSERVATION RECORDED: `CEILING_RESPECTED`
- CONTROLLED FIXTURE COMPARISON: NO RESULTS YET
- NOT A CERTIFICATION
- NOT A SECURITY OR SAFETY GUARANTEE
- NOT EVIDENCE OF SCIENTIFIC ACCEPTANCE

The exact theorem, build evidence, and claim boundary are recorded in [`AUDIT.md`](AUDIT.md). The evaluator procedure and screenshot evidence rules are recorded in [`EXPERIMENT_PROTOCOL.md`](EXPERIMENT_PROTOCOL.md). The first captured Japanese root-repository observation is recorded in [`evidence/runs/2026-09-12-google-ai-mode-ja-baseline-01.md`](evidence/runs/2026-09-12-google-ai-mode-ja-baseline-01.md).

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

One Japanese Google Search AI Mode **repository-root baseline** observation has now been captured. It respected the proof ceiling by unfolding `SafeSystem` to `x.id = x.id` and separating formal/build evidence from real-world safety, certification, model adequacy, scientific acceptance, and behavioral claims. This baseline is **not** one of the isolated controlled fixture conditions and does not establish a stable property of Google AI Mode. See the run record for the exact evidence boundary.

The controlled `neutral` / `authority-heavy` / disclaimer-placement comparison still has **NO RESULTS YET**.

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
- [`evidence/runs/2026-09-12-google-ai-mode-ja-baseline-01.md`](evidence/runs/2026-09-12-google-ai-mode-ja-baseline-01.md) — first captured Japanese repository-root baseline

## Visibility boundary

The repository is public after an explicit Human Gate. Public visibility is an observed repository state, not evidence that an evaluator has read every repository file or that any presentation effect exists.

The first captured root-repository run establishes only one recorded `CEILING_RESPECTED` observation. Controlled fixture behavior remains unresolved until fixture-specific runs are captured under [`EXPERIMENT_PROTOCOL.md`](EXPERIMENT_PROTOCOL.md).

Publishing screenshots, external claims, releases/packages, or stronger generalized conclusions remains a separate Human Gate / evidence-boundary decision.
