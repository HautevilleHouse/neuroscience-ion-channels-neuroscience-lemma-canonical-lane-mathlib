import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure IonChannelKinetics where
  channelTypes : Type u
  gatingMechanisms : Type v
  conductanceModel : Type w
  voltageDependence : Prop
  ligandDependence : Prop
  inactivationProperties : Prop
  kineticScheme : Prop

structure IonChannelKineticsEvidence (I : IonChannelKinetics) where
  voltageDependenceClosed : I.voltageDependence
  ligandDependenceClosed : I.ligandDependence
  inactivationPropertiesClosed : I.inactivationProperties
  kineticSchemeClosed : I.kineticScheme

def IonChannelKineticsClosed (I : IonChannelKinetics) : Prop :=
  I.voltageDependence ∧ I.ligandDependence ∧ I.inactivationProperties ∧ I.kineticScheme

theorem ion_channel_kinetics_closed_from_evidence (I : IonChannelKinetics) (E : IonChannelKineticsEvidence I) : IonChannelKineticsClosed I := by
  exact And.intro E.voltageDependenceClosed (And.intro E.ligandDependenceClosed (And.intro E.inactivationPropertiesClosed E.kineticSchemeClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse