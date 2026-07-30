import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure IonChannelStructure where
  channelType : Type u
  selectivityFilter : Prop
  gatingMechanism : Prop
  voltageSensitivity : Prop
  ligandBinding : Prop
  ionPermeationClosed : Prop

structure IonChannelEvidence (I : IonChannelStructure) where
  selectivityFilterClosed : I.selectivityFilter
  gatingMechanismClosed : I.gatingMechanism
  voltageSensitivityClosed : I.voltageSensitivity
  ligandBindingClosed : I.ligandBinding

def IonChannelClosed (I : IonChannelStructure) : Prop :=
  I.selectivityFilter ∧ I.gatingMechanism ∧ I.voltageSensitivity ∧ I.ligandBinding ∧ I.ionPermeationClosed

theorem ion_channel_closed_from_evidence (I : IonChannelStructure) (E : IonChannelEvidence I) :
    IonChannelClosed I := by
  exact And.intro E.selectivityFilterClosed
    (And.intro E.gatingMechanismClosed
      (And.intro E.voltageSensitivityClosed
        (And.intro E.ligandBindingClosed I.ionPermeationClosed)))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
