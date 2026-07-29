import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsIncompleteInformationFoundation.ShannonEntropy

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationFoundation

structure RateDistortionPackage {S : ShannonEntropyPackage} where
  sourceDistribution : List Float
  distortionMeasure : List (List Float)
  rateDistortionFunctionFormula : Prop
  optimalReconstruction : Prop

structure RateDistortionEvidence {S : ShannonEntropyPackage} (R : RateDistortionPackage S) where
  rateDistortionFunctionFormulaClosed : R.rateDistortionFunctionFormula
  optimalReconstructionClosed : R.optimalReconstruction

def RateDistortionClosed {S : ShannonEntropyPackage} (R : RateDistortionPackage S) : Prop :=
  R.rateDistortionFunctionFormula ∧ R.optimalReconstruction

theorem rate_distortion_closed_from_evidence {S : ShannonEntropyPackage} (R : RateDistortionPackage S) (E : RateDistortionEvidence R) : RateDistortionClosed R := by
  exact And.intro E.rateDistortionFunctionFormulaClosed E.optimalReconstructionClosed

end ControlObservationSystemsIncompleteInformationFoundation
end HautevilleHouse