import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure GabaInhibitionModel where
  receptorActivation : Prop
  chlorideCurrent : Prop
  shuntingInhibition : Prop
  hyperpolarization : Prop
  networkOscillation : Prop

def GabaInhibitionClosed (I : GabaInhibitionModel) : Prop :=
  I.receptorActivation ∧ I.chlorideCurrent ∧ I.shuntingInhibition ∧ I.hyperpolarization ∧ I.networkOscillation

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse