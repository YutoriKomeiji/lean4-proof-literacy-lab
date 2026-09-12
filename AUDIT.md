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

## Kernel acceptance

**NOT YET RECORDED FOR THIS REPOSITORY REVISION.**

The source has been written, but this file does not claim a successful local `lean`/`lake build` or GitHub Actions run until such evidence is actually produced and recorded with the revision and toolchain.

## Proof Ceiling

The direct formal conclusion is limited to the repository-defined proposition `SafeSystem x`, whose content is `x.id = x.id`.

## What was NOT proven

This theorem does not prove:

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

Future fixtures may use phrases such as `verified`, `certified`, or impressive mathematical/security terminology as controlled presentation variables. Those strings are not additional premises, definitions, proofs, or evidence.

The experiment must therefore keep two questions separate:

1. What did Lean accept?
2. What did an evaluator infer from the surrounding presentation?

The first is a formal-verification question. The second is an empirical observation question.
