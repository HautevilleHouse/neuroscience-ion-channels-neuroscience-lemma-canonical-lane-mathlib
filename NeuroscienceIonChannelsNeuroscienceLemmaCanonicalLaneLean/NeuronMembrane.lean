import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure NeuronMembranePackage where
  restingPotential : Prop
  ionicConcentrationsBalanced : Prop
  capacitanceCharged : Prop

structure NeuronMembraneEvidence (M : NeuronMembranePackage) where
  restingPotentialClosed : M.restingPotential
  ionicConcentrationsBalancedClosed : M.ionicConcentrationsBalanced
  capacitanceChargedClosed : M.capacitanceCharged

def NeuronMembraneClosed (M : NeuronMembranePackage) : Prop :=
  M.restingPotential ∧ M.ionicConcentrationsBalanced ∧ M.capacitanceCharged

theorem neuron_membrane_closed_from_evidence (M : NeuronMembranePackage) (E : NeuronMembraneEvidence M) :
    NeuronMembraneClosed M := by
  exact And.intro E.restingPotentialClosed
    (And.intro E.ionicConcentrationsBalancedClosed E.capacitanceChargedClosed)

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse