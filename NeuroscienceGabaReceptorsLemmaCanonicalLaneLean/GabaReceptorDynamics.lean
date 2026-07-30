import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure GabaReceptorDynamics where
  gabaTypeA : Prop
  gabaTypeB : Prop
  chlorideIonChannel : Prop
  potassiumIonChannel : Prop
  postsynapticPotential : Prop

structure GabaDynamicsEvidence (D : GabaReceptorDynamics) where
  gabaTypeAClosed : D.gabaTypeA
  gabaTypeBClosed : D.gabaTypeB
  chlorideIonChannelClosed : D.chlorideIonChannel
  potassiumIonChannelClosed : D.potassiumIonChannel
  postsynapticPotentialClosed : D.postsynapticPotential

def GabaDynamicsClosed (D : GabaReceptorDynamics) : Prop :=
  D.gabaTypeA ∧ D.gabaTypeB ∧ D.chlorideIonChannel ∧
  D.potassiumIonChannel ∧ D.postsynapticPotential

theorem gaba_dynamics_closed_from_evidence (D : GabaReceptorDynamics)
    (E : GabaDynamicsEvidence D) : GabaDynamicsClosed D := by
  exact And.intro E.gabaTypeAClosed
    (And.intro E.gabaTypeBClosed
      (And.intro E.chlorideIonChannelClosed
        (And.intro E.potassiumIonChannelClosed E.postsynapticPotentialClosed)))

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse