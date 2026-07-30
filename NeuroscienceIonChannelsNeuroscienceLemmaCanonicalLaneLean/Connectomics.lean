import NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean.NeuralFieldTheory

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure ConnectomeGraph where
  vertices : Type
  edges : vertices → vertices → Prop
  edgeWeight : vertices → vertices → ℝ
  graphProperties : Prop
  graphPropertiesTerm : graphProperties

structure ConnectomicsPackage {H : HodgkinHuxleyPackage} where
  graph : ConnectomeGraph
  nodeDynamics : H → ConnectomeGraph.vertices → ℝ
  edgeDynamics : ConnectomeGraph.vertices → ConnectomeGraph.vertices → ℝ
  graphConnected : Prop

structure ConnectomicsEvidence {H : HodgkinHuxleyPackage} (C : ConnectomicsPackage H) where
  graphClosed : C.graph.graphProperties
  connectedClosed : C.graphConnected
  graphClosedTerm : graphClosed
  connectedClosedTerm : connectedClosed

def ConnectomicsClosed {H : HodgkinHuxleyPackage} (C : ConnectomicsPackage H) : Prop :=
  C.graph.graphProperties ∧ C.graphConnected

theorem connectomics_closed_from_evidence {H : HodgkinHuxleyPackage} (C : ConnectomicsPackage H) (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.graphClosedTerm E.connectedClosedTerm

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse