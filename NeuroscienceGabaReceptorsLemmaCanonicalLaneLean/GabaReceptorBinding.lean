import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure GabaReceptorBindingPackage where
  ligandBindingAffinity : Prop
  channelOpeningRate : Prop
  chlorideIonFlux : Prop
  desensitizationTimeConstant : Prop
  benzodiazepineModulation : Prop

structure GabaReceptorBindingEvidence (G : GabaReceptorBindingPackage) where
  ligandBindingAffinityClosed : G.ligandBindingAffinity
  channelOpeningRateClosed : G.channelOpeningRate
  chlorideIonFluxClosed : G.chlorideIonFlux
  desensitizationTimeConstantClosed : G.desensitizationTimeConstant
  benzodiazepineModulationClosed : G.benzodiazepineModulation

def GabaReceptorBindingClosed (G : GabaReceptorBindingPackage) : Prop :=
  G.ligandBindingAffinity ∧ G.channelOpeningRate ∧ G.chlorideIonFlux ∧ G.desensitizationTimeConstant ∧ G.benzodiazepineModulation

theorem gaba_receptor_binding_closed_from_evidence
    (G : GabaReceptorBindingPackage) (E : GabaReceptorBindingEvidence G) :
    GabaReceptorBindingClosed G := by
  exact And.intro E.ligandBindingAffinityClosed
    (And.intro E.channelOpeningRateClosed
      (And.intro E.chlorideIonFluxClosed
        (And.intro E.desensitizationTimeConstantClosed E.benzodiazepineModulationClosed)))

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse