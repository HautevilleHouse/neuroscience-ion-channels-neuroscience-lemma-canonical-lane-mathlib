import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure IonChannelGatingPackage where
  activationVariable : Prop
  inactivationVariable : Prop
  gateParticleModel : Prop
  voltageSensitivity : Prop

structure IonChannelGatingEvidence (G : IonChannelGatingPackage) where
  activationVariableClosed : G.activationVariable
  inactivationVariableClosed : G.inactivationVariable
  gateParticleModelClosed : G.gateParticleModel
  voltageSensitivityClosed : G.voltageSensitivity

def IonChannelGatingClosed (G : IonChannelGatingPackage) : Prop :=
  G.activationVariable ∧ G.inactivationVariable ∧ G.gateParticleModel ∧ G.voltageSensitivity

theorem ion_channel_gating_closed_from_evidence (G : IonChannelGatingPackage) (E : IonChannelGatingEvidence G) :
    IonChannelGatingClosed G := by
  exact And.intro E.activationVariableClosed
    (And.intro E.inactivationVariableClosed
      (And.intro E.gateParticleModelClosed E.voltageSensitivityClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse