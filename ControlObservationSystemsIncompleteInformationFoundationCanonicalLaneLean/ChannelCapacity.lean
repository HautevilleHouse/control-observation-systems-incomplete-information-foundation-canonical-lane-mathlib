import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsIncompleteInformationFoundation.ShannonEntropy

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationFoundation

structure ChannelCapacityPackage {S : ShannonEntropyPackage} where
  channelMatrix : List (List Float)
  inputDistribution : List Float
  mutualInformationFormula : Prop
  capacityOptimal : Prop

structure ChannelCapacityEvidence {S : ShannonEntropyPackage} (C : ChannelCapacityPackage S) where
  mutualInformationFormulaClosed : C.mutualInformationFormula
  capacityOptimalClosed : C.capacityOptimal

def ChannelCapacityClosed {S : ShannonEntropyPackage} (C : ChannelCapacityPackage S) : Prop :=
  C.mutualInformationFormula ∧ C.capacityOptimal

theorem channel_capacity_closed_from_evidence {S : ShannonEntropyPackage} (C : ChannelCapacityPackage S) (E : ChannelCapacityEvidence C) : ChannelCapacityClosed C := by
  exact And.intro E.mutualInformationFormulaClosed E.capacityOptimalClosed

end ControlObservationSystemsIncompleteInformationFoundation
end HautevilleHouse