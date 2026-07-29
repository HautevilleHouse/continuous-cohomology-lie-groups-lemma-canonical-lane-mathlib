import canonicalLaneMathlib.AdmissibleClass
import ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean