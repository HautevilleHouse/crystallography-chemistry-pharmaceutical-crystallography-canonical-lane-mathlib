import canonicalLaneMathlib.AdmissibleClass

/-!
# Space Group Classification Package
-/

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure BravaisLattice where
  dimension : Nat
  centeringType : String
  latticeParameters : Prop

def BravaisLatticeClosed (L : BravaisLattice) : Prop :=
  L.dimension = 3 ∧ L.centeringType ∈ {"P", "I", "F", "C", "R"} ∧ L.latticeParameters

structure SpaceGroup where
  lattice : BravaisLattice
  symmetryOperations : List String
  wyckoffPositions : Prop
  isUnique : Prop

structure SpaceGroupEvidence (S : SpaceGroup) where
  latticeClosed : BravaisLatticeClosed S.lattice
  wyckoffPositionsClosed : S.wyckoffPositions
  isUniqueClosed : S.isUnique

def SpaceGroupClosed (S : SpaceGroup) : Prop :=
  BravaisLatticeClosed S.lattice ∧ S.wyckoffPositions ∧ S.isUnique

theorem space_group_closed_from_evidence (S : SpaceGroup) (E : SpaceGroupEvidence S) :
    SpaceGroupClosed S := by
  exact And.intro E.latticeClosed (And.intro E.wyckoffPositionsClosed E.isUniqueClosed)

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
