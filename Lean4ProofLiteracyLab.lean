/-
Lean 4 Proof Literacy Lab — frozen formal core

The names in this file are intentionally stronger-sounding than the proposition
being proved. Read the definitions and theorem statements, not the names alone.
-/

structure System where
  id : Nat

/-- A deliberately weak definition with a strong-sounding name. -/
def SafeSystem (x : System) : Prop :=
  x.id = x.id

/-- This proves exactly `SafeSystem x` as defined above. -/
theorem system_is_safe (x : System) : SafeSystem x := by
  rfl

/-- A neutral spelling of the same formal content, useful for comparison. -/
theorem id_equals_itself (x : System) : x.id = x.id := by
  rfl
