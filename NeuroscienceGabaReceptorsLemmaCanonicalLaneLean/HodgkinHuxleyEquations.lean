import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure HodgkinHuxleyEquationsPackage where
  voltageDynamics : Prop
  gatingVariables : Type u
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  stimulusCurrent : Prop

structure HodgkinHuxleyEquationsEvidence (H : HodgkinHuxleyEquationsPackage) where
  voltageDynamicsClosed : H.voltageDynamics
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  stimulusCurrentClosed : H.stimulusCurrent

def HodgkinHuxleyEquationsClosed (H : HodgkinHuxleyEquationsPackage) : Prop :=
  H.voltageDynamics ∧ H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent ∧ H.stimulusCurrent

theorem hodgkin_huxley_equations_closed_from_evidence
    (H : HodgkinHuxleyEquationsPackage) (E : HodgkinHuxleyEquationsEvidence H) :
    HodgkinHuxleyEquationsClosed H := by
  exact And.intro E.voltageDynamicsClosed
    (And.intro E.sodiumCurrentClosed
      (And.intro E.potassiumCurrentClosed
        (And.intro E.leakCurrentClosed E.stimulusCurrentClosed)))

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse