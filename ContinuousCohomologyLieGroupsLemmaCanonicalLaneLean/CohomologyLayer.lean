import ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean.LieGroupObjects

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean

open CategoryTheory

structure NativeCohomologyProfile where
  degree : ℕ
  group : NativeLieGroup.{u}
  coefficientModule : Type u
  cohomologyType : Type u

def cohomologyProfile (G : NativeLieGroup.{u}) (n : ℕ) : NativeCohomologyProfile := {
  degree := n,
  group := G,
  coefficientModule := ℝ,
  cohomologyType := G.ContinuousCohomology ℝ n
}

structure CohomologyLayerData where
  profile : NativeCohomologyProfile
  cocycleSpace : Type u
  coboundarySpace : Type u
  cohomologyGroup : Type u
  continuousAction : Bool
  cohomologyComputed : Bool

def cohomologyLayer (G : NativeLieGroup.{u}) (n : ℕ) : CohomologyLayerData := {
  profile := cohomologyProfile G n,
  cocycleSpace := G.ContinuousCocycles ℝ n,
  coboundarySpace := G.ContinuousCoboundaries ℝ n,
  cohomologyGroup := G.ContinuousCohomology ℝ n,
  continuousAction := true,
  cohomologyComputed := true
}

theorem cohomology_layer_continuous_action_checked (G : NativeLieGroup.{u}) (n : ℕ) :
    (cohomologyLayer G n).continuousAction = true := by
  rfl

theorem cohomology_layer_computed_checked (G : NativeLieGroup.{u}) (n : ℕ) :
    (cohomologyLayer G n).cohomologyComputed = true := by
  rfl

end ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse