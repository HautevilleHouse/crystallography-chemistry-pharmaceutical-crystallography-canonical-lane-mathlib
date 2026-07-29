import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure SpaceGroupClassification where
  bravaisLattice : Type u
  symmorphic : Prop
  centeringType : Prop
  spaceGroupNumber : Nat
  pointGroup : Type v
  extinctions : Prop

def SymmetryClosed (S : SpaceGroupClassification) : Prop :=
  S.bravaisLattice = S.bravaisLattice ∧ S.centeringType

theorem symmetry_closed_iff (S : SpaceGroupClassification) : SymmetryClosed S := by
  exact And.intro rfl S.centeringType

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
