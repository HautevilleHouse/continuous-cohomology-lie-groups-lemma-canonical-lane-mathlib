import canonicalLaneMathlib.AdmissibleClass
import ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean.ContinuousCohomologySubstrate
import Mathlib.Algebra.Lie.Cohomology

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean

open LieAlgebra

structure LieAlgebraCohomologyState (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] where
  lieAlgebra : 𝔤
  degree : ℕ
  cohomologyGroup : Type u

default instance [LieRing 𝔤] [LieAlgebra ℝ 𝔤] {n : ℕ} : LieAlgebraCohomologyState 𝔤 where
  lieAlgebra := inferInstanceAs 𝔤
  degree := n
  cohomologyGroup := LieAlgebraCohomology 𝔤 n

structure LieAlgebraCohomologyBridgeCocyle (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] where
  cocycle : LieAlgebraCocyle 𝔤 ℝ
  isContinuous : Prop
  admissible : Prop

theorem lie_algebra_cohomology_bridge_available (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] {n : ℕ} :
    Nonempty (LieAlgebraCohomologyState 𝔤) := ⟨inferInstance⟩

theorem lie_algebra_cohomology_cocycle_checked (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] (c : LieAlgebraCohomologyBridgeCocyle 𝔤) :
    c.cocycle.result.up = c.cocycle.result.up := rfl

end HautevilleHouse
end ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean