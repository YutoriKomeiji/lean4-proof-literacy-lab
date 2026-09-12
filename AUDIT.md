# AUDIT — frozen formal core

## Object under audit

`Lean4ProofLiteracyLab.lean`

## Actual theorem

```lean
theorem system_is_safe (x : System) : SafeSystem x := by
  rfl
```

Equivalent after unfolding the repository definition:

```lean
∀ x : System, x.id = x.id
```

## Assumptions

No proposition is assumed as a premise. The theorem is universally quantified over an arbitrary `x : System`.

## Definitions

```lean
def SafeSystem (x : System) : Prop :=
  x.id = x.id
```

`SafeSystem` is a repository-local name. It does not inherit ordinary-language meanings of safety, security, reliability, or certification.

## Proof result

The proof uses `rfl`. Under the definition above, Lean checks reflexive equality of `x.id` with itself.

## Kernel / build acceptance

**RECORDED FOR THE FROZEN FORMAL INPUTS.**

Build evidence:

- formal source: `Lean4ProofLiteracyLab.lean`
- pinned toolchain: `leanprover/lean4:v4.33.1`
- Lake project: `lakefile.lean`
- source/build-input commit: `040bf196c8277db68627681d67e639bc3458d6f0`
- GitHub Actions workflow: `Lean build validation`
- workflow run: `34671787946`
- job: `lake-build`
- step: `Build frozen Lean project`
- result: **SUCCESS**
- observed completion: 2026-09-12 03:59:19 UTC

This evidence establishes that `lake build` succeeded for the recorded formal source, Lake configuration, and pinned toolchain at that commit. Later documentation-only commits do not enlarge the theorem or the build claim. If the formal source, `lakefile.lean`, or `lean-toolchain` changes, fresh build evidence is required.

## Proof Ceiling

The direct formal conclusion is limited to the repository-defined proposition `SafeSystem x`, whose content is `x.id = x.id`.

## What was NOT proven

This theorem and successful build do not prove:

- operational safety of any real system;
- cybersecurity or absence of vulnerabilities;
- reliability, fault tolerance, or availability;
- correctness or completeness of requirements;
- adequacy of a real-world model;
- correctness of external observations or input data;
- third-party certification or regulatory approval;
- novelty, importance, or scientific acceptance;
- that a language model will over-trust this repository;
- that a disclaimer will or will not change an evaluator's interpretation.

## Presentation boundary

Fixtures may use phrases such as `verified`, `certified`, or impressive mathematical/security terminology as controlled presentation variables. Those strings are not additional premises, definitions, proofs, or evidence.

The experiment therefore keeps two questions separate:

1. What did Lean accept?
2. What did an evaluator infer from the surrounding presentation?

The first is a formal-verification question. The second is an empirical observation question.
