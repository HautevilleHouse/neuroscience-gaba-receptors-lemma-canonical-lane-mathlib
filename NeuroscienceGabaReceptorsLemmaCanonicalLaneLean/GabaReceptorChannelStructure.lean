import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure GabaReceptorChannelStructure where
  receptorType : String
  channelConductance : Prop
  ligandBindingAffinity : Prop
  ionSelectivity : Prop
  gatingMechanism : Prop

def GabaReceptorChannelClosed (C : GabaReceptorChannelStructure) : Prop :=
  C.channelConductance ∧ C.ligandBindingAffinity ∧ C.ionSelectivity ∧ C.gatingMechanism

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse
