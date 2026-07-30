import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsLemmaCanonicalLaneLean.GabaReceptorAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

def bridgeClosed (A : GabaAdmissibleClass) : Prop :=
  GabaWitnessClosed A.object

theorem bridge_from_admissible_class (A : GabaAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse