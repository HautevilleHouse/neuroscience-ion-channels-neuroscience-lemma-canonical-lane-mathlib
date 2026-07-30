import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapseWeight : Type u
  presynapticActivity : Prop
  postsynapticActivity : Prop
  weightUpdateRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  synapseWeightClosed : H.synapseWeight
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.synapseWeight ∧ H.presynapticActivity ∧ H.postsynapticActivity ∧
  H.weightUpdateRule ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.synapseWeightClosed
    (And.intro E.presynapticActivityClosed
      (And.intro E.postsynapticActivityClosed
        (And.intro E.weightUpdateRuleClosed
          (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse