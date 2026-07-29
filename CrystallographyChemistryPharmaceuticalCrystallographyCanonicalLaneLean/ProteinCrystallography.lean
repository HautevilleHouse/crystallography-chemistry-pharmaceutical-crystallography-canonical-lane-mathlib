import canonicalLaneMathlib.AdmissibleClass

/-!
# Protein Crystallography Package
-/

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure ProteinCrystal where
  spaceGroup : SpaceGroup
  unitCell : BravaisLattice
  solventContent : ℝ
  resolution : ℝ

structure ElectronDensityMap where
  mapData : Type
  phasesAvailable : Prop
  modelBuilt : Prop

structure PhasingMethod where
  methodName : String
  requiresHeavyAtom : Bool
  anomalousScattering : Prop

structure ProteinEvidence (C : ProteinCrystal) (M : ElectronDensityMap) where
  spaceGroupClosed : SpaceGroupClosed C.spaceGroup
  phasesAvailableClosed : M.phasesAvailable
  modelBuiltClosed : M.modelBuilt

def ProteinCrystallographyClosed (C : ProteinCrystal) (M : ElectronDensityMap) : Prop :=
  SpaceGroupClosed C.spaceGroup ∧ M.phasesAvailable ∧ M.modelBuilt

theorem protein_crystallography_closed_from_evidence (C : ProteinCrystal) (M : ElectronDensityMap)
    (E : ProteinEvidence C M) : ProteinCrystallographyClosed C M := by
  exact And.intro E.spaceGroupClosed (And.intro E.phasesAvailableClosed E.modelBuiltClosed)

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
