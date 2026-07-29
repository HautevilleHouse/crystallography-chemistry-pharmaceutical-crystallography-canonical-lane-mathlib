import canonicalLaneMathlib.AdmissibleClass

/-!
# X-Ray Diffraction Theory
-/

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure XRayDiffraction where
  braggAngle : ℝ
  wavelength : ℝ
  millerIndices : ℕ × ℕ × ℕ
  intensityFactor : Prop

def BraggCondition (d : ℝ) (θ : ℝ) (λ : ℝ) (n : ℕ) : Prop :=
  2 * d * Real.sin θ = n * λ

structure DiffractionPattern where
  peaks : List (ℝ × ℝ × ℝ)  -- (2θ, intensity, hkl)
  structureFactorFormula : Prop
  phaseProblem : Prop

structure XRayEvidence (X : XRayDiffraction) (P : DiffractionPattern) where
  braggConditionMet : BraggCondition 0.0 X.braggAngle X.wavelength 1
  structureFactorFormulaClosed : P.structureFactorFormula
  phaseProblemClosed : P.phaseProblem

def DiffractionClosed (X : XRayDiffraction) (P : DiffractionPattern) : Prop :=
  BraggCondition 0.0 X.braggAngle X.wavelength 1 ∧ P.structureFactorFormula ∧ P.phaseProblem

theorem diffraction_closed_from_evidence (X : XRayDiffraction) (P : DiffractionPattern)
    (E : XRayEvidence X P) : DiffractionClosed X P := by
  exact And.intro E.braggConditionMet (And.intro E.structureFactorFormulaClosed E.phaseProblemClosed)

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
