import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure FiringRateModel where
  voltageGatedChannels : Prop
  synapticConductances : Prop
  firingThreshold : Prop
  refractoryPeriod : Prop

structure FiringRateEvidence (M : FiringRateModel) where
  voltageGatedChannelsClosed : M.voltageGatedChannels
  synapticConductancesClosed : M.synapticConductances
  firingThresholdClosed : M.firingThreshold
  refractoryPeriodClosed : M.refractoryPeriod

def FiringRateClosed (M : FiringRateModel) : Prop :=
  M.voltageGatedChannels ∧ M.synapticConductances ∧
  M.firingThreshold ∧ M.refractoryPeriod

theorem firing_rate_closed_from_evidence (M : FiringRateModel)
    (E : FiringRateEvidence M) : FiringRateClosed M := by
  exact And.intro E.voltageGatedChannelsClosed
    (And.intro E.synapticConductancesClosed
      (And.intro E.firingThresholdClosed E.refractoryPeriodClosed))

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse