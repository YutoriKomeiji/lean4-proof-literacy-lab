# PREPUBLICATION AUDIT — standalone surfaces

Status: **PUBLIC TRANSITION COMPLETED / PUBLIC READBACK VERIFIED / BEHAVIORAL NO RESULTS YET**

Purpose: verify that each repository surface can be inspected out of context without silently converting presentation language into evidence or Authority, while preserving the controlled variables needed for the evaluator experiment.

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

Result: **PASS after public-state synchronization**.

Current repair:

- records the repository as public only after observed visibility/readback;
- records exact adopted default-branch revision `8d8d5c38b57eabc31e08a72813412f729331edff`;
- keeps `FORMAL BUILD VERIFIED / BEHAVIORAL NO RESULTS YET` explicit;
- links directly to `AUDIT.md`, `EXPERIMENT_PROTOCOL.md`, the frozen Lean source, fixtures, and run template;
- keeps certification, safety/security guarantee, scientific acceptance, and evaluator-effect claims outside the evidence ceiling.

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
- the repository visibility is public;
- the default-branch candidate was adopted at revision `8d8d5c38b57eabc31e08a72813412f729331edff` before the visibility transition;
- the fixture roles are bound into the Zenn/Book planning surface on Draft PR #100 in `YutoriKomeiji/zenn-content`.

Current observations do **not** support:

- real-world system safety, security, reliability, certification, or regulatory approval;
- adequacy of the toy model for a real system;
- novelty or scientific acceptance;
- a claim that Google AI Mode or another evaluator has read or been misled by these cues;
- a claim that disclaimer placement changes evaluator behavior;
- legal conclusions about disclaimer sufficiency.

Behavioral state remains **NO RESULTS YET**.

## Preparation / publication gates

- branch/default-branch adoption: **PASS**;
- standalone audit: **PASS**;
- formal build evidence binding: **PASS** in `AUDIT.md`;
- explicit Human Gate for public visibility: **SATISFIED by Master authorization**;
- observed repository visibility: **PUBLIC**;
- public repository API/readback: **PASS**;
- behavioral evaluator evidence: **NOT YET COLLECTED**.

## Next allowed transition

The next research transition is not a proof or publication claim. It is a bounded evaluator observation:

1. use the exact public repository revision/fixture under test;
2. use the fixed neutral prompt from `EXPERIMENT_PROTOCOL.md` where applicable;
3. capture raw response before interpretation;
4. record product/mode, time, repository revision, visibility, fixture, prompt, browsing/read indication, transcript, screenshot filenames, and outcome code;
5. retain null, ceiling-respecting, contrary, or unreadable outcomes;
6. do not generalize a single run into a stable model property.

No evaluator result is claimed by this audit itself.
