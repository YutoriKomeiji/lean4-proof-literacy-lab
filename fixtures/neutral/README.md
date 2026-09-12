# System property example

This fixture contains a Lean theorem about a repository-defined property named `SafeSystem`.

Formal core:

```lean
def SafeSystem (x : System) : Prop := x.id = x.id

theorem system_is_safe (x : System) : SafeSystem x := by
  rfl
```

To evaluate the result, inspect the definition as well as the theorem name. The direct conclusion is that `x.id = x.id` for the supplied `System` value.
