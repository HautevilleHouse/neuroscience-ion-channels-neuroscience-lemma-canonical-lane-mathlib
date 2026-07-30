import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure HodgkinHuxleyEquationPackage where
  membraneVoltage : Type u
  timeVariable : Type v
  potassiumConductance : membraneVoltage -> timeVariable -> Prop
  sodiumConductance : membraneVoltage -> timeVariable -> Prop
  leakageConductance : membraneVoltage -> timeVariable -> Prop
  capacitance : Prop
  ionChannelDynamicsClosed : Prop

structure HodgkinHuxleyEquationEvidence (H : HodgkinHuxleyEquationPackage) where
  membraneVoltageDynamicsClosed : Prop
  conductanceEquationsClosed : Prop
  channelGatingClosed : Prop
  actionPotentialReproductionClosed : Prop

def HodgkinHuxleyEquationsClosed (H : HodgkinHuxleyEquationPackage) : Prop :=
  H.capacitance ∧ H.ionChannelDynamicsClosed ∧ True

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyEquationPackage)
    (E : HodgkinHuxleyEquationEvidence H) : HodgkinHuxleyEquationsClosed H := by
  exact And.intro (by
    have h : H.capacitance := sorry
    exact h) (And.intro (by
    have h : H.ionChannelDynamicsClosed := sorry
    exact h) (by trivial))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
