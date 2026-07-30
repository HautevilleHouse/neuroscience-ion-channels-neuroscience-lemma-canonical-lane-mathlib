import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean.HodgkinHuxleyEquations
import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean.IonChannelGating

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure ActionPotentialGenerationPackage {M : NeuronMembranePackage}
    (H : HodgkinHuxleyPackage M) (G : IonChannelGatingPackage) where
  thresholdReached : Prop
  upstroke : Prop
  downstroke : Prop
  refractoryPeriod : Prop

structure ActionPotentialGenerationEvidence {M : NeuronMembranePackage}
    {H : HodgkinHuxleyPackage M} {G : IonChannelGatingPackage}
    (A : ActionPotentialGenerationPackage H G) where
  thresholdReachedClosed : A.thresholdReached
  upstrokeClosed : A.upstroke
  downstrokeClosed : A.downstroke
  refractoryPeriodClosed : A.refractoryPeriod

def ActionPotentialGenerationClosed {M : NeuronMembranePackage}
    {H : HodgkinHuxleyPackage M} {G : IonChannelGatingPackage}
    (A : ActionPotentialGenerationPackage H G) : Prop :=
  A.thresholdReached ∧ A.upstroke ∧ A.downstroke ∧ A.refractoryPeriod

theorem action_potential_generation_closed_from_evidence {M : NeuronMembranePackage}
    {H : HodgkinHuxleyPackage M} {G : IonChannelGatingPackage}
    (A : ActionPotentialGenerationPackage H G) (E : ActionPotentialGenerationEvidence A) :
    ActionPotentialGenerationClosed A := by
  exact And.intro E.thresholdReachedClosed
    (And.intro E.upstrokeClosed
      (And.intro E.downstrokeClosed E.refractoryPeriodClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse