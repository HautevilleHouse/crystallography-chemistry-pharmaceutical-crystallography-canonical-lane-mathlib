import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  crystallographyConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "crystallography-chemistry-pharmaceutical-crystallography-canonical-lane",
  theoremName := "Crystallography Chemistry Pharmaceutical Crystallography Canonical Lane",
  theoremObject := "CrystallographyAdmittedObject with spaceGroup and latticeParameters crystalline",
  classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary",
  crystallographyConstrainedStatement := "crystallography-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "crystallography_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "crystallography-chemistry-pharmaceutical-crystallography-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "crystallography_constrained" := by
  rfl

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse