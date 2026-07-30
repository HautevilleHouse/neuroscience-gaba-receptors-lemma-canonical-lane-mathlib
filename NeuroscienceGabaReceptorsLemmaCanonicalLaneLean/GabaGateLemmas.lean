import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsLemmaCanonicalLaneLean.GabaBridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

def gateClosed (A : GabaAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GabaAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse