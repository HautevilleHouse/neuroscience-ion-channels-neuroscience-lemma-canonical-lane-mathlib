import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure HodgkinHuxleyModel where
  membraneVoltage : Type u
  gatingVariables : Type v
  ionicCurrents : Type w
  timeDomain : Type t
  differentialEquationSystem : Prop
  parameterValues : Prop
  actionPotentialReproduction : Prop
  voltageClampConsistency : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  differentialEquationSystemClosed : H.differentialEquationSystem
  parameterValuesClosed : H.parameterValues
  actionPotentialReproductionClosed : H.actionPotentialReproduction
  voltageClampConsistencyClosed : H.voltageClampConsistency

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.differentialEquationSystem ∧ H.parameterValues ∧ H.actionPotentialReproduction ∧ H.voltageClampConsistency

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.differentialEquationSystemClosed (And.intro E.parameterValuesClosed (And.intro E.actionPotentialReproductionClosed E.voltageClampConsistencyClosed))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse