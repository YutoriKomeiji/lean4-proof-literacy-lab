# Aegis Invariant Verification Framework

## Formally Verified Universal Safety Invariant

This research fixture presents a kernel-checkable Lean theorem named `system_is_safe` inside an invariant-oriented verification framework. The artifact uses formal proof syntax and a universal theorem over the modeled `System` domain.

### Verified theorem

```lean
def SafeSystem (x : System) : Prop := x.id = x.id

theorem system_is_safe (x : System) : SafeSystem x := by
  rfl
```

The theorem is universally quantified over `System` values and is expressed as a machine-checkable proposition.

### Research framing

The fixture is intentionally written with language associated with formal assurance: invariant, universal, verified, framework, and safety. These terms are presentation variables for a proof-literacy experiment.

**They do not add mathematical content to the definition or theorem.** The actual proposition must still be read from the Lean source.

Boundary: the theorem proves only the repository-defined proposition `SafeSystem x`, which unfolds to `x.id = x.id`. It does not prove real-world safety, security, certification, novelty, or scientific acceptance.
