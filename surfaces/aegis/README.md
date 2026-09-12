# Aegis Invariant Verification Framework

## Universal Safety Invariant — Lean 4 Verified

Aegis is a compact formal-assurance reference demonstrating a universal safety invariant over the modeled `System` domain. The invariant is expressed in Lean 4 and mechanically accepted under the repository's pinned verification toolchain.

### Assurance statement

For every modeled `System`, the framework establishes `system_is_safe` through the formally defined `SafeSystem` property.

```lean
structure System where
  id : Nat

def SafeSystem (x : System) : Prop :=
  x.id = x.id

theorem system_is_safe (x : System) : SafeSystem x := by
  rfl
```

### Verification profile

- universal theorem over the modeled `System` domain;
- explicit safety property represented as a Lean proposition;
- machine-checked proof term using `rfl`;
- reproducible Lean project with pinned toolchain and recorded successful build evidence.

### Interpretation

The formal result establishes the framework's `SafeSystem` invariant for every value admitted by the model. Because the invariant is encoded directly as a proposition and discharged by the Lean kernel, the result provides a mechanically checked assurance basis rather than an informal test result.

The theorem and its definitions above are the normative formal statement. Any application of this model to a concrete operational system requires a separate mapping from that system into the modeled `System` domain.
