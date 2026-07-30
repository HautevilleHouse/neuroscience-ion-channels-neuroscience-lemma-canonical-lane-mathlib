import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean.NeuronMembrane

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure CableTheoryPackage (M : NeuronMembranePackage) where
  cableEquation : Prop
  lengthConstant : Prop
  timeConstant : Prop
  passivePropagation : Prop

structure CableTheoryEvidence {M : NeuronMembranePackage} (C : CableTheoryPackage M) where
  cableEquationClosed : C.cableEquation
  lengthConstantClosed : C.lengthConstant
  timeConstantClosed : C.timeConstant
  passivePropagationClosed : C.passivePropagation

def CableTheoryClosed {M : NeuronMembranePackage} (C : CableTheoryPackage M) : Prop :=
  C.cableEquation ∧ C.lengthConstant ∧ C.timeConstant ∧ C.passivePropagation

theorem cable_theory_closed_from_evidence {M : NeuronMembranePackage} (C : CableTheoryPackage M) (E : CableTheoryEvidence C) :
    CableTheoryClosed C := by
  exact And.intro E.cableEquationClosed
    (And.intro E.lengthConstantClosed
      (And.intro E.timeConstantClosed E.passivePropagationClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse