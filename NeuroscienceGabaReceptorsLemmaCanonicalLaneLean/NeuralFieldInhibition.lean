import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure NeuralFieldInhibitionPackage where
  connectivityKernel : Type u
  firingRateFunction : Type v
  synapticTimeConstant : Prop
  inhibitionStrength : Prop
  oscillatoryBetaRate : Prop
  seizureSuppression : Prop

structure NeuralFieldInhibitionEvidence (N : NeuralFieldInhibitionPackage) where
  synapticTimeConstantClosed : N.synapticTimeConstant
  inhibitionStrengthClosed : N.inhibitionStrength
  oscillatoryBetaRateClosed : N.oscillatoryBetaRate
  seizureSuppressionClosed : N.seizureSuppression

def NeuralFieldInhibitionClosed (N : NeuralFieldInhibitionPackage) : Prop :=
  N.synapticTimeConstant ∧ N.inhibitionStrength ∧ N.oscillatoryBetaRate ∧ N.seizureSuppression

theorem neural_field_inhibition_closed_from_evidence
    (N : NeuralFieldInhibitionPackage) (E : NeuralFieldInhibitionEvidence N) :
    NeuralFieldInhibitionClosed N := by
  exact And.intro E.synapticTimeConstantClosed
    (And.intro E.inhibitionStrengthClosed
      (And.intro E.oscillatoryBetaRateClosed E.seizureSuppressionClosed))

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse