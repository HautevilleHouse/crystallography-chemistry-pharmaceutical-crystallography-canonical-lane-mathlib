import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure QuasicrystalModel where
  irrationalCut : List Float
  highDimension : Nat
  diffractionSymmetry : Prop
  forbiddenSymmetry : Prop
  penroseTiling : Type u

def QuasicrystalClosed (Q : QuasicrystalModel) : Prop :=
  Q.forbiddenSymmetry ∧ Q.highDimension > 3

theorem quasicrystal_closed_from_model (Q : QuasicrystalModel) (h1 : Q.forbiddenSymmetry) (h2 : Q.highDimension > 3) : QuasicrystalClosed Q := by
  exact And.intro h1 h2

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
