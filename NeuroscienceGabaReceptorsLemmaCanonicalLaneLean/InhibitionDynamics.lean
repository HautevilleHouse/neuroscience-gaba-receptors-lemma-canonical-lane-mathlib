import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure InhibitionDynamicsPackage where
  gabaRelease : Prop
  receptorActivation : Prop
  chlorideInflux : Prop
  membraneHyperpolarization : Prop
  actionPotentialSuppression : Prop

structure InhibitionDynamicsEvidence (I : InhibitionDynamicsPackage) where
  gabaReleaseClosed : I.gabaRelease
  receptorActivationClosed : I.receptorActivation
  chlorideInfluxClosed : I.chlorideInflux
  membraneHyperpolarizationClosed : I.membraneHyperpolarization
  actionPotentialSuppressionClosed : I.actionPotentialSuppression

def InhibitionDynamicsClosed (I : InhibitionDynamicsPackage) : Prop :=
  I.gabaRelease ∧ I.receptorActivation ∧
  I.chlorideInflux ∧ I.membraneHyperpolarization ∧
  I.actionPotentialSuppression

theorem inhibition_dynamics_closed_from_evidence
    (I : InhibitionDynamicsPackage) (E : InhibitionDynamicsEvidence I) :
    InhibitionDynamicsClosed I := by
  exact And.intro E.gabaReleaseClosed
    (And.intro E.receptorActivationClosed
      (And.intro E.chlorideInfluxClosed
        (And.intro E.membraneHyperpolarizationClosed E.actionPotentialSuppressionClosed)))

end HautevilleHouse
end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean