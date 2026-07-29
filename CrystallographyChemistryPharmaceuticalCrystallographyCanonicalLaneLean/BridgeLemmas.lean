import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
