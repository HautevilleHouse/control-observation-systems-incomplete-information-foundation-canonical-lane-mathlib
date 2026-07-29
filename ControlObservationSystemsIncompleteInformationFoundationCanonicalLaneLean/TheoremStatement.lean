import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "ControlObservationSystemsIncompleteInformationFoundationCanonicalLaneLean",
  theoremName := "ControlObservationSystemsIncompleteInformationFoundationCanonicalLaneLean",
  theoremObject := "AdmittedObject",
  classicalBoundary := "carried_gap",
  manifoldConstrainedStatement := "Shannon source coding theorem, channel coding theorem, rate-distortion theory, entropy bounds",
  certificateLane := "cosii_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end ControlObservationSystemsIncompleteInformationFoundationCanonicalLaneLean
end HautevilleHouse