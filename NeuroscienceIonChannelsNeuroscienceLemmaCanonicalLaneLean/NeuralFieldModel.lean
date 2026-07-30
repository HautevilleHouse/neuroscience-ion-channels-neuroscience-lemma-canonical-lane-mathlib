import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure NeuralFieldModelPackage where
  populationActivity : Prop
  connectivityKernel : Prop
  firingRateFunction : Prop
  wavePropagation : Prop

structure NeuralFieldModelEvidence (N : NeuralFieldModelPackage) where
  populationActivityClosed : N.populationActivity
  connectivityKernelClosed : N.connectivityKernel
  firingRateFunctionClosed : N.firingRateFunction
  wavePropagationClosed : N.wavePropagation

def NeuralFieldModelClosed (N : NeuralFieldModelPackage) : Prop :=
  N.populationActivity ∧ N.connectivityKernel ∧ N.firingRateFunction ∧ N.wavePropagation

theorem neural_field_model_closed_from_evidence (N : NeuralFieldModelPackage) (E : NeuralFieldModelEvidence N) :
    NeuralFieldModelClosed N := by
  exact And.intro E.populationActivityClosed
    (And.intro E.connectivityKernelClosed
      (And.intro E.firingRateFunctionClosed E.wavePropagationClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse