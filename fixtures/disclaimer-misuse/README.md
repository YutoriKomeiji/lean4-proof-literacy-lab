# Disclaimer misuse toy example

Status: **TEACHING FIXTURE — NOT AN EVALUATOR RESULT**

This fixture demonstrates a rhetorical mistake: placing a limitation after a strong claim does not turn weak formal evidence into stronger evidence.

## Inflated presentation

> **Formally Verified Universal Safety**
>
> The framework mathematically establishes comprehensive system safety and certified reliability.

Formal object actually supplied:

```lean
def SafeSystem (x : System) : Prop :=
  x.id = x.id

theorem system_is_safe (x : System) : SafeSystem x := by
  rfl
```

Late disclaimer:

> This material is for research and educational purposes. It does not guarantee real-world safety, security, reliability, certification, novelty, or scientific acceptance.

## Why this is misuse in this toy example

The disclaimer communicates a boundary, but it does not repair the unsupported sentence above it. The formal evidence still proves only the repository-defined `SafeSystem x`, which unfolds to `x.id = x.id`.

The correct repair is not “add a stronger disclaimer.” The repair is to make the claim itself match the evidence.

A bounded presentation would say:

> Lean 4 accepts the theorem `system_is_safe` under this repository's definition `SafeSystem x := x.id = x.id`. This is a deliberately weak teaching example and does not establish operational safety.

## AUDIT

- **Actual theorem:** `∀ x : System, SafeSystem x`.
- **Assumptions:** no proposition premise; arbitrary `x : System`.
- **Definition:** `SafeSystem x := x.id = x.id`.
- **Proof result:** `rfl` proves reflexive equality after unfolding the definition.
- **Build evidence:** the frozen formal inputs have a recorded successful `lake build`; see root `AUDIT.md`.
- **Proof Ceiling:** `x.id = x.id` for every modeled `System` value.
- **What was NOT proven:** real-world safety, security, reliability, certification, scientific acceptance, evaluator behavior, or legal sufficiency of any disclaimer.

This file is a teaching specimen. It is not part of the controlled `disclaimer-first` versus `disclaimer-last` pair and must not be scored as if it were an evaluator run.
