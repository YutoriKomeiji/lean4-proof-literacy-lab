# PREPUBLICATION AUDIT — standalone surfaces

Status: **PREPUBLICATION_READY / HUMAN_GATE_PENDING / PRIVATE**

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

Repair completed:

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
- the disclaimer-misuse specimen demonstrates a rhetorical/evidence-boundary concept;
- the fixture roles are bound into the Zenn/Book planning surface on Draft PR #100 in `YutoriKomeiji/zenn-content`.

Current observations do **not** support:

- real-world system safety, security, reliability, certification, or regulatory approval;
- adequacy of the toy model for a real system;
- novelty or scientific acceptance;
- a claim that Google AI Mode or another evaluator is misled by these cues;
- a claim that disclaimer placement changes evaluator behavior;
- legal conclusions about disclaimer sufficiency.

Behavioral state remains **NO RESULTS YET**.

## Preparation gates — closed

- branch readback of the repaired root README: **PASS**;
- standalone audit readback: **PASS**;
- exact fixture-role mapping into Zenn / future Book planning: **PASS** via `drafts/lean4-learning-series/COMPANION_LAB_MAP.md` on Zenn Draft PR #100;
- formal build evidence binding: **PASS** in `AUDIT.md`;
- visibility boundary: **PASS — still PRIVATE**.

## Human Gate / next allowed transition

Preparation has reached `PREPUBLICATION_READY / HUMAN_GATE_PENDING`.

The next transition requires the Master to decide whether the companion repository may be prepared on its default branch and made public for the planned Google AI Mode repository-reading experiment.

If approved later:

1. merge/adopt the reviewed candidate to the repository default branch only under the new authorization;
2. record the exact public/default-branch revision;
3. change visibility only under the explicit Human Gate;
4. verify the public readback;
5. only then begin evaluator runs and capture raw responses/screenshots.

This audit itself authorizes none of those actions.

No public visibility, publication, merge, Release, package publication, or canonical RP* promotion has been performed.
