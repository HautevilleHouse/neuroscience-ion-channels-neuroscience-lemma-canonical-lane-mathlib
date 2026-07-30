import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure HebbianSynapticPlasticity where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  weightUpdateRule : Type u
  correlationBased : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop

structure HebbianPlasticityEvidence (H : HebbianSynapticPlasticity) where
  correlationBasedClosed : H.correlationBased
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependenceClosed : H.spikeTimingDependence

def HebbianPlasticityClosed (H : HebbianSynapticPlasticity) : Prop :=
  H.correlationBased ∧ H.longTermPotentiation ∧ H.longTermDepression ∧ H.spikeTimingDependence

theorem hebbian_plasticity_closed_from_evidence (H : HebbianSynapticPlasticity) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.correlationBasedClosed (And.intro E.longTermPotentiationClosed (And.intro E.longTermDepressionClosed E.spikeTimingDependenceClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse