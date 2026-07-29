import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure CrystallographicRestraint where
  bondLengthMax : Float
  bondLengthMin : Float
  angleDeviation : Float
  planarTolerance : Float
  chiralityFixed : Prop

def RestraintClosed (R : CrystallographicRestraint) : Prop :=
  R.bondLengthMax > R.bondLengthMin ∧ R.angleDeviation < 10.0

theorem restraint_closed_from_validation (R : CrystallographicRestraint) (h1 : R.bondLengthMax > R.bondLengthMin) (h2 : R.angleDeviation < 10.0) : RestraintClosed R := by
  exact And.intro h1 h2

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
