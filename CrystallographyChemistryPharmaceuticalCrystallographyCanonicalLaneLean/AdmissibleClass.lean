import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean

structure AdmissibleClass where
  object : CrystallographyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CrystallographyChemistryPharmaceuticalCrystallographyCanonicalLaneLean
end HautevilleHouse
