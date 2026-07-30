import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure ConnectomeGraph where
  nodeCount : ℕ
  edgePairs : List (ℕ × ℕ)
  edgeWeights : List ℝ
  directed : Bool
  weighted : Bool
  selfLoopsAllowed : Bool

structure ConnectomeEvidence (C : ConnectomeGraph) where
  nodesPositive : C.nodeCount > 0
  edgesInRange : ∀ (e : ℕ × ℕ), e ∈ C.edgePairs → e.1 < C.nodeCount ∧ e.2 < C.nodeCount
  weightMatchLength : C.weighted → List.length C.edgeWeights = List.length C.edgePairs
  nonnegativeWeights : C.weighted → (∀ w ∈ C.edgeWeights, w ≥ 0)

def ConnectomeClosed (C : ConnectomeGraph) : Prop :=
  C.nodeCount > 0 ∧
  (∀ (e : ℕ × ℕ), e ∈ C.edgePairs → e.1 < C.nodeCount ∧ e.2 < C.nodeCount) ∧
  (C.weighted → List.length C.edgeWeights = List.length C.edgePairs) ∧
  (C.weighted → (∀ w ∈ C.edgeWeights, w ≥ 0))

theorem connectome_closed_from_evidence (C : ConnectomeGraph) (E : ConnectomeEvidence C) :
    ConnectomeClosed C := by
  exact And.intro E.nodesPositive
    (And.intro E.edgesInRange
      (And.intro E.weightMatchLength E.nonnegativeWeights))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse