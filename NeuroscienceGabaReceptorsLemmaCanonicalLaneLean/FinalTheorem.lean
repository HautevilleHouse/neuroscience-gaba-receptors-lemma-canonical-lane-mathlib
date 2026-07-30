import HautevilleHouse.NeuroscienceGabaReceptorsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

def ConstrainedGabaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gaba_endgame (A : AdmissibleClass) :
    ConstrainedGabaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse