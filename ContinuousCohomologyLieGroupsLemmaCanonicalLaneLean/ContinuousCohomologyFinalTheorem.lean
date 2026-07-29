import HautevilleHouse.ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean.ContinuousCohomologyGateLemmas

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean

def ContinuousCohomologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem continuous_cohomology_endgame (A : AdmissibleClass) :
    ContinuousCohomologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse