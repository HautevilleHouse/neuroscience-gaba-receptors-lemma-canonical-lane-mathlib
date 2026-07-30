import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure SynapticTransmissionPackage where
  presynapticRelease : Prop
  postsynapticReceptors : Prop
  ionChannelActivation : Prop
  postsynapticPotential : Prop
  summationTemporal : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  presynapticReleaseClosed : S.presynapticRelease
  postsynapticReceptorsClosed : S.postsynapticReceptors
  ionChannelActivationClosed : S.ionChannelActivation
  postsynapticPotentialClosed : S.postsynapticPotential
  summationTemporalClosed : S.summationTemporal

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.presynapticRelease ∧ S.postsynapticReceptors ∧
  S.ionChannelActivation ∧ S.postsynapticPotential ∧
  S.summationTemporal

theorem synaptic_transmission_closed_from_evidence
    (S : SynapticTransmissionPackage) (E : SynapticTransmissionEvidence S) :
    SynapticTransmissionClosed S := by
  exact And.intro E.presynapticReleaseClosed
    (And.intro E.postsynapticReceptorsClosed
      (And.intro E.ionChannelActivationClosed
        (And.intro E.postsynapticPotentialClosed E.summationTemporalClosed)))

end HautevilleHouse
end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean