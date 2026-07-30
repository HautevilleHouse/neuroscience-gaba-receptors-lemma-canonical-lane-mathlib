import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure HodgkinHuxleyGabaIntegration where
  membranePotential : ℝ → ℝ
  gabaConductance : ℝ → ℝ
  reversalPotential : ℝ
  kineticsModel : Prop
  synapticInput : ℝ → ℝ
  integrationClosed : Prop

def HodgkinHuxleyGabaClosed (I : HodgkinHuxleyGabaIntegration) : Prop :=
  I.kineticsModel ∧ I.integrationClosed

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse
