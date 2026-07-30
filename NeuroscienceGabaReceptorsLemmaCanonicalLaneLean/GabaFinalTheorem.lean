import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsLemmaCanonicalLaneLean.GabaGateLemmas

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

def ConstrainedGabaReceptorClosure (A : GabaAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gaba_receptor_endgame (A : GabaAdmissibleClass) :
    ConstrainedGabaReceptorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse