import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure GabaReceptorPackage where
  subunitTypes : List String
  bindingSites : Nat
  conformationalStates : Nat
  expressionLevels : List Float
  knockoutValidated : Prop
  knockoutValidatedTerm : knockoutValidated

default
  knockoutValidated := True
  knockoutValidatedTerm := True.intro

structure GabaReceptorEvidence (G : GabaReceptorPackage) where
  subunitTypesIdentified : G.subunitTypes.length ≥ 2
  bindingSitesDefined : G.bindingSites ≥ 2
  conformationalStatesDefined : G.conformationalStates ≥ 2
  expressionConsistent : G.expressionLevels.length = G.subunitTypes.length
  knockoutValidatedClosed : G.knockoutValidated

def GabaReceptorClosed (G : GabaReceptorPackage) : Prop :=
  G.subunitTypes.length ≥ 2 ∧ G.bindingSites ≥ 2 ∧
  G.conformationalStates ≥ 2 ∧ G.expressionLevels.length = G.subunitTypes.length ∧
  G.knockoutValidated

theorem gaba_receptor_closed_from_evidence (G : GabaReceptorPackage) (E : GabaReceptorEvidence G) :
    GabaReceptorClosed G := by
  exact And.intro E.subunitTypesIdentified
    (And.intro E.bindingSitesDefined
      (And.intro E.conformationalStatesDefined
        (And.intro E.expressionConsistent E.knockoutValidatedClosed)))

end HautevilleHouse
end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean