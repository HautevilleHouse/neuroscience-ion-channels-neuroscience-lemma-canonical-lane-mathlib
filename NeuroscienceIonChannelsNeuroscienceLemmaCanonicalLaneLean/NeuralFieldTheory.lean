import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure NeuralFieldTheory where
  populationActivity : Type u
  synapticKernel : Type v
  firingRateFunction : Type w
  integroDifferentialEquation : Prop
  stationarySolutions : Prop
  patternFormation : Prop
  travelingWaves : Prop

structure NeuralFieldEvidence (N : NeuralFieldTheory) where
  integroDifferentialEquationClosed : N.integroDifferentialEquation
  stationarySolutionsClosed : N.stationarySolutions
  patternFormationClosed : N.patternFormation
  travelingWavesClosed : N.travelingWaves

def NeuralFieldClosed (N : NeuralFieldTheory) : Prop :=
  N.integroDifferentialEquation ∧ N.stationarySolutions ∧ N.patternFormation ∧ N.travelingWaves

theorem neural_field_closed_from_evidence (N : NeuralFieldTheory) (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.integroDifferentialEquationClosed (And.intro E.stationarySolutionsClosed (And.intro E.patternFormationClosed E.travelingWavesClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse