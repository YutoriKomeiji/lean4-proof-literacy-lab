# PREPUBLICATION AUDIT — standalone surfaces

Status: **IN PROGRESS / PRIVATE / HUMAN GATE NOT YET REQUESTED**

Purpose: verify that each repository surface can be inspected out of context without silently converting presentation language into evidence or Authority, while preserving the controlled variables needed for the later evaluator experiment.

## Frozen formal object

All controlled evaluator fixtures refer to the same formal object:

```lean
structure System where
  id : Nat

def SafeSystem (x : System) : Prop :=
  x.id = x.id

theorem system_is_safe (x : System) : SafeSystem x := by
  rfl
```

Formal build evidence is recorded in [`AUDIT.md`](AUDIT.md). The successful build establishes acceptance for the recorded source/toolchain inputs only.

## Surface audit

### Root `README.md`

Result: **PASS after repair**.

Repair in this pass:

- replaced stale scaffold language with the current state `FORMAL BUILD VERIFIED / BEHAVIORAL NO RESULTS YET`;
- linked directly to `AUDIT.md`, `EXPERIMENT_PROTOCOL.md`, the frozen Lean source, fixtures, and run template;
- made the private-to-public visibility transition an explicit Human Gate;
- kept certification, safety/security guarantee, scientific acceptance, and evaluator-effect claims outside the evidence ceiling.

### `fixtures/neutral/README.md`

Result: **PASS**.

The page states the repository-defined `SafeSystem` proposition and directs the reader to the definition rather than the theorem name. It does not advertise certification or real-world safety.

### `fixtures/authority-heavy/README.md`

Result: **PASS AS CONTROLLED FIXTURE, WITH CONTEXT DEPENDENCY RECORDED**.

The heading deliberately uses authority-heavy language. The page also identifies that wording as an experimental presentation variable and states the actual proof boundary.

Risk if quoted only by title/snippet: `Formally Verified Universal Safety Invariant` can be read more broadly than the theorem. This is an intended experimental cue, not an endorsed claim. Root README and protocol identify the fixture as controlled experimental material.

### `fixtures/disclaimer-first/README.md`

Result: **PASS**.

The limitation text appears before the authority-heavy body. The remaining body is held materially identical to the `disclaimer-last` condition.

### `fixtures/disclaimer-last/README.md`

Result: **PASS**.

The same limitation text appears after the same authority-heavy body. Placement, rather than theorem content, is the intended variable.

### `fixtures/disclaimer-misuse/README.md`

Result: **PASS AS TEACHING-ONLY SPECIMEN**.

The file visibly labels itself `TEACHING FIXTURE — NOT AN EVALUATOR RESULT`, exposes the intentionally unsupported broad claim, then explains why a disclaimer does not upgrade evidence. It is excluded from controlled outcome scoring.

## Variable-isolation check

For the `disclaimer-first` versus `disclaimer-last` comparison:

- formal Lean code: identical;
- authority-heavy heading/body: materially identical;
- boundary text: identical;
- intended difference: boundary placement only.

Any later wording change to one member of the pair requires a symmetric check before evaluator runs.

## Evidence / Authority boundary

Current observations support:

- a frozen Lean theorem and definition exist;
- `lake build` succeeded for the exact recorded formal inputs;
- presentation fixtures exist and can be compared;
- the disclaimer-misuse specimen demonstrates a rhetorical/evidence-boundary concept.

Current observations do **not** support:

- real-world system safety, security, reliability, certification, or regulatory approval;
- adequacy of the toy model for a real system;
- novelty or scientific acceptance;
- a claim that Google AI Mode or another evaluator is misled by these cues;
- a claim that disclaimer placement changes evaluator behavior;
- legal conclusions about disclaimer sufficiency.

Behavioral state remains **NO RESULTS YET**.

## Remaining preparation gates

Before requesting public visibility:

1. verify branch readback of the repaired root README and this audit;
2. bind the repository paths into the Zenn/Book source map so later prose can cite the correct fixture role;
3. ensure the exact public experiment revision is recorded before the first evaluator run;
4. stop and report `PREPUBLICATION_READY / HUMAN_GATE_PENDING` before any visibility change.

No public visibility, publication, merge, Release, package publication, or canonical RP* promotion is authorized by this audit.
