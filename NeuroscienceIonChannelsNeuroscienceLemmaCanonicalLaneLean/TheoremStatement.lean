import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

structure NeuronAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  membranePotentialModel : Prop
  ionChannelDynamics : Prop
  hebbianPlasticity : Prop
  conclusion : membranePotentialModel ∧ ionChannelDynamics ∧ hebbianPlasticity

def NeuronWitnessClosed (O : NeuronAdmittedObject) : Prop :=
  O.membranePotentialModel ∧ O.ionChannelDynamics ∧ O.hebbianPlasticity

theorem neuron_witness_closed_from_object (O : NeuronAdmittedObject) :
    NeuronWitnessClosed O := O.conclusion

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
