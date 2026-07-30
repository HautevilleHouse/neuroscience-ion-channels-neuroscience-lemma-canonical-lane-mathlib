import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure HebbianLearningPackage where
  correlationRule : Prop
  weightUpdate : Prop
  stabilityCondition : Prop
  synapticScaling : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  correlationRuleClosed : H.correlationRule
  weightUpdateClosed : H.weightUpdate
  stabilityConditionClosed : H.stabilityCondition
  synapticScalingClosed : H.synapticScaling

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.correlationRule ∧ H.weightUpdate ∧ H.stabilityCondition ∧ H.synapticScaling

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.correlationRuleClosed
    (And.intro E.weightUpdateClosed
      (And.intro E.stabilityConditionClosed E.synapticScalingClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse