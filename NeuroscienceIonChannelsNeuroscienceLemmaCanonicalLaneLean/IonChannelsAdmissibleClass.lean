import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure IonChannelAdmittedObject where
  channelType : String
  conductance : ℝ
  voltageDependence : Prop
  ligandGated : Prop
  ionSelectivity : String
  conclusion : voltageDependence → ligandGated → ionSelectivity = "Na" ∨ ionSelectivity = "K" ∨ ionSelectivity = "Ca" ∨ ionSelectivity = "Cl"

structure NeurosciAdmissibleClass where
  object : IonChannelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : NeurosciAdmissibleClass) : Prop :=
  (A.object.conclusion A.object.voltageDependence A.object.ligandGated) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse