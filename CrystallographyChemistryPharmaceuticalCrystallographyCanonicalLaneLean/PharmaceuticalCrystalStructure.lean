import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure PharmaceuticalCrystalForm where
  polymorphForm : String
  spaceGroupNumber : Nat
  unitCellVolume : Float
  powderPatternHash : String
  bioavailability : Float
  solubility : Float

def CrystalFormClosed (C : PharmaceuticalCrystalForm) : Prop :=
  C.spaceGroupNumber > 0 ∧ C.bioavailability > 0.0

theorem crystal_form_closed_condition (C : PharmaceuticalCrystalForm) (h1 : C.spaceGroupNumber > 0) (h2 : C.bioavailability > 0.0) : CrystalFormClosed C := by
  exact And.intro h1 h2

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
