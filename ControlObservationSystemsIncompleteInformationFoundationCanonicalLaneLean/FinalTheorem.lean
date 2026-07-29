import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationFoundationCanonicalLaneLean

def ConstrainedCOSIIClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cosii_endgame (A : AdmissibleClass) :
    ConstrainedCOSIIClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControlObservationSystemsIncompleteInformationFoundationCanonicalLaneLean
end HautevilleHouse