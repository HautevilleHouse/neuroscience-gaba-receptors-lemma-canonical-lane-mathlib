import HautevilleHouse.NeuroscienceGabaReceptorsLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure MathlibGabaReceptorsObject where
  receptorType : Type u
  ligandBinding : Prop
  ionChannelModulation : Prop
  postsynapticResponse : Prop

structure GabaAdmittedObject where
  object : MathlibGabaReceptorsObject
  lemmaStatement : Prop
  conclusion : lemmaStatement

def GabaWitnessClosed (O : GabaAdmittedObject) : Prop :=
  O.lemmaStatement

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse