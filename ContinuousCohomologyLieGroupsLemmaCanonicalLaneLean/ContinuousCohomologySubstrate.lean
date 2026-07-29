import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Algebra.LieGroup
import Mathlib.Homology.ContinuousCohomology

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean

open TopologicalSpace
open LieGroup

structure NativeLieGroup (G : Type u) [TopologicalSpace G] [Group G] [LieGroup G] where
  underlyingType : Type u
  isLieGroup : LieGroup (underlyingType : Type u)

default instance [LieGroup G] : NativeLieGroup G where
  underlyingType := G
  isLieGroup := inferInstance

structure ContinuousCohomologyProfile (n : ℕ) (G : Type u) [TopologicalSpace G] [Group G] [LieGroup G] where
  degree : ℕ
  targetModule : Type u
  topologicalStructure : TopologicalSpace (targetModule)
  cohomologyGroup : Type u

def continuousCohomologyProfile (n : ℕ) (G : Type u) [TopologicalSpace G] [Group G] [LieGroup G] : ContinuousCohomologyProfile n G := {
  degree := n,
  targetModule := ℝ,
  topologicalStructure := by infer_instance,
  cohomologyGroup := ContinuousCohomology G ℝ
}

theorem cohomology_profile_degree_checked (n : ℕ) (G : Type u) [TopologicalSpace G] [Group G] [LieGroup G] :
    (continuousCohomologyProfile n G).degree = n := rfl

theorem cohomology_profile_target_checked (n : ℕ) (G : Type u) [TopologicalSpace G] [Group G] [LieGroup G] :
    (continuousCohomologyProfile n G).targetModule = ℝ := rfl

end HautevilleHouse
end ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean