import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationFoundation

structure KolmogorovComplexityPackage where
  turingMachineCount : Nat
  universalTMDescription : String
  minimalProgramLength : Nat → Nat
  incompletenessBound : Prop

structure KolmogorovComplexityEvidence (K : KolmogorovComplexityPackage) where
  minimalProgramLengthDefined : ∀ s : Nat, K.minimalProgramLength s ≥ 0
  incompletenessBoundClosed : K.incompletenessBound

def KolmogorovComplexityClosed (K : KolmogorovComplexityPackage) : Prop :=
  (∀ s : Nat, K.minimalProgramLength s ≥ 0) ∧ K.incompletenessBound

theorem kolmogorov_complexity_closed_from_evidence (K : KolmogorovComplexityPackage) (E : KolmogorovComplexityEvidence K) : KolmogorovComplexityClosed K := by
  exact And.intro E.minimalProgramLengthDefined E.incompletenessBoundClosed

end ControlObservationSystemsIncompleteInformationFoundation
end HautevilleHouse