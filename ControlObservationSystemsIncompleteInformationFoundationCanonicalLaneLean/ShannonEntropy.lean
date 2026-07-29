import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationFoundation

structure ShannonEntropyPackage where
  alphabetSize : Nat
  probabilityDistribution : List (Nat × Float)
  entropyFormula : Prop
  jointDistributionOverChannels : List (Nat × Nat × Float)

structure ShannonEntropyEvidence (S : ShannonEntropyPackage) where
  entropyFormulaClosed : S.entropyFormula
  jointDistributionValid : S.jointDistributionOverChannels.length > 0

def ShannonEntropyClosed (S : ShannonEntropyPackage) : Prop :=
  S.entropyFormula ∧ (S.jointDistributionOverChannels.length > 0)

theorem shannon_entropy_closed_from_evidence (S : ShannonEntropyPackage) (E : ShannonEntropyEvidence S) : ShannonEntropyClosed S := by
  exact And.intro E.entropyFormulaClosed E.jointDistributionValid

end ControlObservationSystemsIncompleteInformationFoundation
end HautevilleHouse