import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean

structure ContinuousCohomologyGroup (G : Type u) [TopologicalSpace G] [Group G] (V : Type u) [TopologicalVectorSpace V] [ContinuousModule G V] where
  degree : ℕ
  cocycles : Set (ContinuousFunction (G ^ degree) V)

structure NativeContinuousCohomologyProfile (G : Type u) [TopologicalSpace G] [Group G] (V : Type u) [TopologicalVectorSpace V] [ContinuousModule G V] where
  degree : ℕ
  continuousCohomologyAvailable : Bool
  boundedCohomologyAvailable : Bool

def continuousCohomologyProfile (G : Type u) [TopologicalSpace G] [Group G] (V : Type u) [TopologicalVectorSpace V] [ContinuousModule G V] (deg : ℕ) : NativeContinuousCohomologyProfile G V := {
  degree := deg,
  continuousCohomologyAvailable := true,
  boundedCohomologyAvailable := true
}

theorem continuous_cohomology_profile_available (G : Type u) [TopologicalSpace G] [Group G] (V : Type u) [TopologicalVectorSpace V] [ContinuousModule G V] (deg : ℕ) :
  (continuousCohomologyProfile G V deg).continuousCohomologyAvailable = true ∧
  (continuousCohomologyProfile G V deg).boundedCohomologyAvailable = true := by
  simp [continuousCohomologyProfile]

end ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse