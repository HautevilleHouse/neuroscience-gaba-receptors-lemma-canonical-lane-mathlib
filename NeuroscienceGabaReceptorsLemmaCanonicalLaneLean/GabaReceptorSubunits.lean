import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure GabaReceptorSubunit where
  gene : String
  proteinSequence : String
  pentamericAssembly : Prop
  chlorideIonChannel : Prop
  benzodiazepineBindingSite : Prop

def GabaReceptorSubunitClosed (S : GabaReceptorSubunit) : Prop :=
  S.pentamericAssembly ∧ S.chlorideIonChannel ∧ S.benzodiazepineBindingSite

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse