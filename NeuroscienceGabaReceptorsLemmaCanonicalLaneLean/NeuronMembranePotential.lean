import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGabaReceptorsLemmaCanonicalLaneLean

structure NeuronMembranePotentialPackage where
  ionConcentrations : Type u
  reversalPotential : Type v
  membraneCapacitance : Type w
  leakConductance : Prop
  sodiumConductance : Prop
  potassiumConductance : Prop
  gabaClConductance : Prop

structure NeuronMembranePotentialEvidence (N : NeuronMembranePotentialPackage) where
  leakConductanceClosed : N.leakConductance
  sodiumConductanceClosed : N.sodiumConductance
  potassiumConductanceClosed : N.potassiumConductance
  gabaClConductanceClosed : N.gabaClConductance

def NeuronMembranePotentialClosed (N : NeuronMembranePotentialPackage) : Prop :=
  N.leakConductance ∧ N.sodiumConductance ∧ N.potassiumConductance ∧ N.gabaClConductance

theorem neuron_membrane_potential_closed_from_evidence
    (N : NeuronMembranePotentialPackage) (E : NeuronMembranePotentialEvidence N) :
    NeuronMembranePotentialClosed N := by
  exact And.intro E.leakConductanceClosed
    (And.intro E.sodiumConductanceClosed
      (And.intro E.potassiumConductanceClosed E.gabaClConductanceClosed))

end NeuroscienceGabaReceptorsLemmaCanonicalLaneLean
end HautevilleHouse