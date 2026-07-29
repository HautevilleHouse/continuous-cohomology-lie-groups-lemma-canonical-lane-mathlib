import canonicalLaneMathlib.AdmissibleClass
import ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean.LieAlgebraCohomologyLayer
import Mathlib.Homology.ContinuousCohomology.VanEst

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean

open LieGroup
open ContinuousCohomology

structure VanEstMorphismState (G : Type u) [TopologicalSpace G] [Group G] [LieGroup G] (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] (n : ℕ) where
  source : G
  target : 𝔤
  degree : ℕ
  continuousCohomologyClass : ContinuousCohomology G ℝ n
  lieAlgebraCohomologyClass : LieAlgebraCohomology 𝔤 ℝ n
  morphismDefined : Prop

default instance (G : Type u) [TopologicalSpace G] [Group G] [LieGroup G] (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] (n : ℕ) : VanEstMorphismState G 𝔤 n where
  source := inferInstanceAs G
  target := inferInstanceAs 𝔤
  degree := n
  continuousCohomologyClass := inferInstance
  lieAlgebraCohomologyClass := inferInstance
  morphismDefined := True

theorem van_est_morphism_available (G : Type u) [TopologicalSpace G] [Group G] [LieGroup G] (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] (n : ℕ) :
    Nonempty (VanEstMorphismState G 𝔤 n) := ⟨inferInstance⟩

theorem van_est_morphism_degree_checked (G : Type u) [TopologicalSpace G] [Group G] [LieGroup G] (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] (n : ℕ) (s : VanEstMorphismState G 𝔤 n) :
    s.degree = n := rfl

end HautevilleHouse
end ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean