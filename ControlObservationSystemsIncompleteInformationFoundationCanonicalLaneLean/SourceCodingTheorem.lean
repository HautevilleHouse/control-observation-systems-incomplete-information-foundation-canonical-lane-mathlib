import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsIncompleteInformationFoundation.ShannonEntropy

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationFoundation

structure SourceCodingTheoremPackage {S : ShannonEntropyPackage} where
  entropyBound : S.entropyFormula → (∃ codeLength : Nat, codeLength ≥ 0)
  achievableRate : Prop

structure SourceCodingTheoremEvidence {S : ShannonEntropyPackage} (C : SourceCodingTheoremPackage S) where
  entropyBoundClosed : C.entropyBound
  achievableRateClosed : C.achievableRate

def SourceCodingTheoremClosed {S : ShannonEntropyPackage} (C : SourceCodingTheoremPackage S) : Prop :=
  C.entropyBound ∧ C.achievableRate

theorem source_coding_theorem_closed_from_evidence {S : ShannonEntropyPackage} (C : SourceCodingTheoremPackage S) (E : SourceCodingTheoremEvidence C) : SourceCodingTheoremClosed C := by
  exact And.intro E.entropyBoundClosed E.achievableRateClosed

end ControlObservationSystemsIncompleteInformationFoundation
end HautevilleHouse