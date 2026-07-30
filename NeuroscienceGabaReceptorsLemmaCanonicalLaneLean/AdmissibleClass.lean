import HautevilleHouse.NeuroscienceGabaReceptorsLemmaCanonicalLaneLean.HodgkinHuxleyModel
import HautevilleHouse.NeuroscienceGabaReceptorsLemmaCanonicalLaneLean.GabaSynapticTransmission

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure NeuroscienceAdmittedObject where
  gabaReceptorModel : GabaReceptorSubunit
  transmissionModel : GabaSynapticTransmission
  hodgkinHuxley : HodgkinHuxleyModel
  hebbianPlasticity : HebbianPlasticityRule
  inhibitionModel : GabaInhibitionModel
  conclusion : Prop

structure AdmissibleClass where
  object : NeuroscienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def NeuroscienceWitnessClosed (O : NeuroscienceAdmittedObject) : Prop :=
  O.conclusion

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse