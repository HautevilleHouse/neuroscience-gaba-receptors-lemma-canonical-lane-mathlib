import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure HebbianPlasticityRule where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticStrengthChange : ℝ
  ltp : Prop
  ltd : Prop

def HebbianPlasticityClosed (H : HebbianPlasticityRule) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ (H.ltp ∨ H.ltd)

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse