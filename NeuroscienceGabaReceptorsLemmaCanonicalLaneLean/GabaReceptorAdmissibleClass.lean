import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure GabaReceptorNeuron where
  neuronId : Type
  membranePotential : Type
  gabaReceptorDensity : Type
  inhibitorySynapticCurrent : Type
  receptorActivationClosed : Prop
  currentGenerationClosed : Prop
  activationTerm : receptorActivationClosed
  currentTerm : currentGenerationClosed

structure GabaReceptorAdmittedObject where
  neuron : GabaReceptorNeuron
  receptorBindingClosed : Prop
  chlorideChannelOpenProbability : Prop
  postsynapticCurrentIntegrated : Prop
  conclusion : receptorBindingClosed ∧ chlorideChannelOpenProbability ∧ postsynapticCurrentIntegrated

structure GabaAdmissibleClass where
  object : GabaReceptorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def gabaAdmittedClosure (A : GabaAdmissibleClass) : Prop :=
  GabaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GabaWitnessClosed (O : GabaReceptorAdmittedObject) : Prop :=
  O.receptorBindingClosed ∧ O.chlorideChannelOpenProbability ∧ O.postsynapticCurrentIntegrated

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse