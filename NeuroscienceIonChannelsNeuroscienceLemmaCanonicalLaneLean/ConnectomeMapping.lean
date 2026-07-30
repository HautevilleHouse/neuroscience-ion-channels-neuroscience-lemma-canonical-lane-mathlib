import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure ConnectomeMappingPackage where
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  networkTopology : Prop
  smallWorldProperty : Prop

structure ConnectomeMappingEvidence (C : ConnectomeMappingPackage) where
  structuralConnectivityClosed : C.structuralConnectivity
  functionalConnectivityClosed : C.functionalConnectivity
  networkTopologyClosed : C.networkTopology
  smallWorldPropertyClosed : C.smallWorldProperty

def ConnectomeMappingClosed (C : ConnectomeMappingPackage) : Prop :=
  C.structuralConnectivity ∧ C.functionalConnectivity ∧ C.networkTopology ∧ C.smallWorldProperty

theorem connectome_mapping_closed_from_evidence (C : ConnectomeMappingPackage) (E : ConnectomeMappingEvidence C) :
    ConnectomeMappingClosed C := by
  exact And.intro E.structuralConnectivityClosed
    (And.intro E.functionalConnectivityClosed
      (And.intro E.networkTopologyClosed E.smallWorldPropertyClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse