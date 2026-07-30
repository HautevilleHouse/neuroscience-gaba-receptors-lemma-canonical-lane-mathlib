import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure HodgkinHuxleyModel where
  membraneCapacitance : ℝ
  sodiumConductance : ℝ
  potassiumConductance : ℝ
  leakConductance : ℝ
  n Gates : ℕ
  m Gates : ℕ
  h Gates : ℕ
  actionPotentialSimulated : Prop

def HodgkinHuxleyModelClosed (H : HodgkinHuxleyModel) : Prop :=
  H.actionPotentialSimulated

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse