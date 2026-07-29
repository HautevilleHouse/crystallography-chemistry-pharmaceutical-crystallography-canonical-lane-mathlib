import canonicalLaneMathlib.AdmissibleClass

/-!
# Pharmaceutical Polymorphism Package
-/

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure CrystalForm where
  spaceGroup : SpaceGroup
  unitCellVolume : ℝ
  solubility : ℝ
  bioavailability : Prop

structure PolymorphicScreen where
  forms : List CrystalForm
  thermodynamicRelationship : Prop
  stabilityOrder : Prop

structure PolymorphEvidence (P : PolymorphicScreen) where
  formsClassified : ∀ f ∈ P.forms, SpaceGroupClosed f.spaceGroup
  thermodynamicRelationshipClosed : P.thermodynamicRelationship
  stabilityOrderClosed : P.stabilityOrder

def PolymorphismClosed (P : PolymorphicScreen) : Prop :=
  (∀ f ∈ P.forms, SpaceGroupClosed f.spaceGroup) ∧ P.thermodynamicRelationship ∧ P.stabilityOrder

theorem polymorphism_closed_from_evidence (P : PolymorphicScreen) (E : PolymorphEvidence P) :
    PolymorphismClosed P := by
  exact And.intro E.formsClassified (And.intro E.thermodynamicRelationshipClosed E.stabilityOrderClosed)

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
