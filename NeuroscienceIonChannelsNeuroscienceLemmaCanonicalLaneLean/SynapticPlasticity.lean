import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean.HebbianLearning

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure SynapticPlasticityPackage (H : HebbianLearningPackage) where
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop
  calciumDynamics : Prop

structure SynapticPlasticityEvidence {H : HebbianLearningPackage} (S : SynapticPlasticityPackage H) where
  longTermPotentiationClosed : S.longTermPotentiation
  longTermDepressionClosed : S.longTermDepression
  spikeTimingDependenceClosed : S.spikeTimingDependence
  calciumDynamicsClosed : S.calciumDynamics

def SynapticPlasticityClosed {H : HebbianLearningPackage} (S : SynapticPlasticityPackage H) : Prop :=
  S.longTermPotentiation ∧ S.longTermDepression ∧ S.spikeTimingDependence ∧ S.calciumDynamics

theorem synaptic_plasticity_closed_from_evidence {H : HebbianLearningPackage} (S : SynapticPlasticityPackage H) (E : SynapticPlasticityEvidence S) :
    SynapticPlasticityClosed S := by
  exact And.intro E.longTermPotentiationClosed
    (And.intro E.longTermDepressionClosed
      (And.intro E.spikeTimingDependenceClosed E.calciumDynamicsClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse