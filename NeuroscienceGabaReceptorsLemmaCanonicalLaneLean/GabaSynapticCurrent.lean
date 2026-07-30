import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure GabaSynapticCurrentPackage where
  presynapticRelease : Prop
  postsynapticReceptors : Type u
  chlorideReversal : Prop
  conductanceDynamics : Prop
  inhibitionAmplitude : Prop

structure GabaSynapticCurrentEvidence (G : GabaSynapticCurrentPackage) where
  presynapticReleaseClosed : G.presynapticRelease
  chlorideReversalClosed : G.chlorideReversal
  conductanceDynamicsClosed : G.conductanceDynamics
  inhibitionAmplitudeClosed : G.inhibitionAmplitude

def GabaSynapticCurrentClosed (G : GabaSynapticCurrentPackage) : Prop :=
  G.presynapticRelease ∧ G.chlorideReversal ∧ G.conductanceDynamics ∧ G.inhibitionAmplitude

theorem gaba_synaptic_current_closed_from_evidence
    (G : GabaSynapticCurrentPackage) (E : GabaSynapticCurrentEvidence G) :
    GabaSynapticCurrentClosed G := by
  exact And.intro E.presynapticReleaseClosed
    (And.intro E.chlorideReversalClosed
      (And.intro E.conductanceDynamicsClosed E.inhibitionAmplitudeClosed))

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse