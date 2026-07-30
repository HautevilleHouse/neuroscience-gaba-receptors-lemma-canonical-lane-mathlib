import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure NetworkOscillationsPackage where
  interneuronConnectivity : Prop
  gabaergicSynapses : Prop
  reciprocalInhibition : Prop
  rhythmGeneration : Prop
  frequencyRange : Prop

structure NetworkOscillationsEvidence (N : NetworkOscillationsPackage) where
  interneuronConnectivityClosed : N.interneuronConnectivity
  gabaergicSynapsesClosed : N.gabaergicSynapses
  reciprocalInhibitionClosed : N.reciprocalInhibition
  rhythmGenerationClosed : N.rhythmGeneration
  frequencyRangeClosed : N.frequencyRange

def NetworkOscillationsClosed (N : NetworkOscillationsPackage) : Prop :=
  N.interneuronConnectivity ∧ N.gabaergicSynapses ∧
  N.reciprocalInhibition ∧ N.rhythmGeneration ∧
  N.frequencyRange

theorem network_oscillations_closed_from_evidence
    (N : NetworkOscillationsPackage) (E : NetworkOscillationsEvidence N) :
    NetworkOscillationsClosed N := by
  exact And.intro E.interneuronConnectivityClosed
    (And.intro E.gabaergicSynapsesClosed
      (And.intro E.reciprocalInhibitionClosed
        (And.intro E.rhythmGenerationClosed E.frequencyRangeClosed)))

end HautevilleHouse
end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean