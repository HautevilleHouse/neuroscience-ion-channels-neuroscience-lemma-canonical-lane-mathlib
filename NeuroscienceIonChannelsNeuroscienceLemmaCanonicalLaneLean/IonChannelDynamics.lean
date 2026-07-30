import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure IonChannel where
  ionType : String
  conductance : ℝ
  reversalPotential : ℝ
  activationCurve : ℝ → ℝ
  inactivationCurve : ℝ → ℝ
  timeConstantActivation : ℝ
  timeConstantInactivation : ℝ

structure IonChannelEvidence (C : IonChannel) where
  conductancePositive : C.conductance > 0
  reversalNonzero : C.reversalPotential ≠ 0
  activationBounded : ∀ (v : ℝ), 0 ≤ C.activationCurve v ∧ C.activationCurve v ≤ 1
  inactivationBounded : ∀ (v : ℝ), 0 ≤ C.inactivationCurve v ∧ C.inactivationCurve v ≤ 1
  timeConstantsPositive : C.timeConstantActivation > 0 ∧ C.timeConstantInactivation > 0

def IonChannelClosed (C : IonChannel) : Prop :=
  C.conductance > 0 ∧ C.reversalPotential ≠ 0 ∧
  (∀ (v : ℝ), 0 ≤ C.activationCurve v ∧ C.activationCurve v ≤ 1) ∧
  (∀ (v : ℝ), 0 ≤ C.inactivationCurve v ∧ C.inactivationCurve v ≤ 1) ∧
  C.timeConstantActivation > 0 ∧ C.timeConstantInactivation > 0

theorem ion_channel_closed_from_evidence (C : IonChannel) (E : IonChannelEvidence C) :
    IonChannelClosed C := by
  exact And.intro E.conductancePositive
    (And.intro E.reversalNonzero
      (And.intro E.activationBounded
        (And.intro E.inactivationBounded E.timeConstantsPositive)))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse