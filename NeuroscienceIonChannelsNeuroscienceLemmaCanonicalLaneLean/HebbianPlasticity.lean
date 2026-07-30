import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure HebbianSynapse where
  preSynapticActivity : ℝ
  postSynapticActivity : ℝ
  weightChangeRate : ℝ
  learningRate : ℝ
  timeConstant : ℝ
  weightBoundLower : ℝ
  weightBoundUpper : ℝ

structure HebbianEvidence (S : HebbianSynapse) where
  activityNonnegative : S.preSynapticActivity ≥ 0 ∧ S.postSynapticActivity ≥ 0
  ratePositive : S.weightChangeRate > 0
  learningRatePositive : S.learningRate > 0
  timeConstantPositive : S.timeConstant > 0
  boundsSensible : S.weightBoundLower < S.weightBoundUpper

def HebbianClosed (S : HebbianSynapse) : Prop :=
  S.preSynapticActivity ≥ 0 ∧ S.postSynapticActivity ≥ 0 ∧
  S.weightChangeRate > 0 ∧ S.learningRate > 0 ∧
  S.timeConstant > 0 ∧ S.weightBoundLower < S.weightBoundUpper

theorem hebbian_closed_from_evidence (S : HebbianSynapse) (E : HebbianEvidence S) :
    HebbianClosed S := by
  exact And.intro (And.intro E.activityNonnegative.1 E.activityNonnegative.2)
    (And.intro E.ratePositive (And.intro E.learningRatePositive
      (And.intro E.timeConstantPositive E.boundsSensible)))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse