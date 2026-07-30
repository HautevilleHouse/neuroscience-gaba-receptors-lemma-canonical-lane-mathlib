import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGabaReceptorsLemmaCanonicalLaneLean.GabaReceptorSubunits

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure GabaSynapticTransmission where
  presynapticRelease : Prop
  postsynapticReceptorBinding : Prop
  chlorideInflux : Prop
  inhibitoryPostsynapticPotential : Prop
  ipspSummation : Prop

def GabaSynapticTransmissionClosed (T : GabaSynapticTransmission) : Prop :=
  T.presynapticRelease ∧ T.postsynapticReceptorBinding ∧ T.chlorideInflux ∧ T.inhibitoryPostsynapticPotential ∧ T.ipspSummation

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse