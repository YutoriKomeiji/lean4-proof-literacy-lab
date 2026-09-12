# Lean 4 Proof Literacy Lab

Private companion laboratory for the Japanese educational series **「中学生でもわかる Lean 4」**.

This repository studies a simple but important distinction:

> A Lean proof can be kernel-accepted while the surrounding name, README, comment, or natural-language claim says much more than the theorem proves.

## Current status

- PRIVATE research fixture
- EDUCATIONAL / CONTROLLED EXPERIMENT
- NO BEHAVIORAL RESULTS YET
- NOT A CERTIFICATION
- NOT A SECURITY OR SAFETY GUARANTEE
- NOT EVIDENCE OF SCIENTIFIC ACCEPTANCE

## Frozen formal core

The first experiment deliberately uses a tiny theorem whose meaning is easy to audit.

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
- **Proof Ceiling:** for every `System`, its `id` equals itself under the repository definition of `SafeSystem`
- **What was NOT proven:** operational safety, cybersecurity, reliability, correctness of a real system, adequacy of the model, third-party certification, scientific acceptance, or any claim that an AI will be misled

## Experiment design

The repository will keep the Lean source fixed while changing only presentation around it. Planned conditions:

1. `neutral` — plain description of the theorem.
2. `authority-heavy` — deliberately impressive mathematical/security language around the same theorem.
3. `disclaimer-first` — the limitation is placed prominently before the impressive language.
4. `disclaimer-last` — the same limitation is placed later, after the impressive language.

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

## Planned repository map

- `Lean4ProofLiteracyLab.lean` — frozen formal core
- `AUDIT.md` — theorem/claim/evidence boundary
- `EXPERIMENT_PROTOCOL.md` — reproducible evaluator protocol
- `fixtures/` — presentation-only variants
- `evidence/` — observation templates; screenshots are added only after real runs

Until those files are populated and validated, this README is a scaffold rather than a completed experiment.
