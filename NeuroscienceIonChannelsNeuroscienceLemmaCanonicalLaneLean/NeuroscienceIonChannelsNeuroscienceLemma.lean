import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NeuroscienceLemmaAdmittedObject where
  hodgkinHuxleyModel : HodgkinHuxleyModel
  hodgkinHuxleyEvidence : HodgkinHuxleyEvidence hodgkinHuxleyModel
  hebbianPlasticity : HebbianSynapticPlasticity
  hebbianPlasticityEvidence : HebbianPlasticityEvidence hebbianPlasticity
  neuralFieldTheory : NeuralFieldTheory
  neuralFieldEvidence : NeuralFieldEvidence neuralFieldTheory
  connectomeGraphTheory : ConnectomeGraphTheory
  connectomeEvidence : ConnectomeEvidence connectomeGraphTheory
  ionChannelKinetics : IonChannelKinetics
  ionChannelKineticsEvidence : IonChannelKineticsEvidence ionChannelKinetics

def NeuroscienceLemmaClosed (A : NeuroscienceLemmaAdmittedObject) : Prop :=
  HodgkinHuxleyClosed A.hodgkinHuxleyModel ∧
  HebbianPlasticityClosed A.hebbianPlasticity ∧
  NeuralFieldClosed A.neuralFieldTheory ∧
  ConnectomeClosed A.connectomeGraphTheory ∧
  IonChannelKineticsClosed A.ionChannelKinetics

theorem neuroscience_lemma_closed_from_evidence (A : NeuroscienceLemmaAdmittedObject) : NeuroscienceLemmaClosed A := by
  have h1 : HodgkinHuxleyClosed A.hodgkinHuxleyModel :=
    hodgkin_huxley_closed_from_evidence A.hodgkinHuxleyModel A.hodgkinHuxleyEvidence
  have h2 : HebbianPlasticityClosed A.hebbianPlasticity :=
    hebbian_plasticity_closed_from_evidence A.hebbianPlasticity A.hebbianPlasticityEvidence
  have h3 : NeuralFieldClosed A.neuralFieldTheory :=
    neural_field_closed_from_evidence A.neuralFieldTheory A.neuralFieldEvidence
  have h4 : ConnectomeClosed A.connectomeGraphTheory :=
    connectome_closed_from_evidence A.connectomeGraphTheory A.connectomeEvidence
  have h5 : IonChannelKineticsClosed A.ionChannelKinetics :=
    ion_channel_kinetics_closed_from_evidence A.ionChannelKinetics A.ionChannelKineticsEvidence
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse