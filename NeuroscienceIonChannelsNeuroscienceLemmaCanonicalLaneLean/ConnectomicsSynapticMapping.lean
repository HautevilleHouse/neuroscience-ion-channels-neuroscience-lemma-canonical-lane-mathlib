import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  neuronGraph : Type u
  adjacencyMatrix : Prop
  synapticWeight : Prop
  networkMotif : Prop
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  neuronGraphClosed : C.neuronGraph
  adjacencyMatrixClosed : C.adjacencyMatrix
  synapticWeightClosed : C.synapticWeight
  networkMotifClosed : C.networkMotif
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.neuronGraph ∧ C.adjacencyMatrix ∧ C.synapticWeight ∧
  C.networkMotif ∧ C.smallWorldProperty ∧ C.modularStructure

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.neuronGraphClosed
    (And.intro E.adjacencyMatrixClosed
      (And.intro E.synapticWeightClosed
        (And.intro E.networkMotifClosed
          (And.intro E.smallWorldPropertyClosed E.modularStructureClosed))))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse