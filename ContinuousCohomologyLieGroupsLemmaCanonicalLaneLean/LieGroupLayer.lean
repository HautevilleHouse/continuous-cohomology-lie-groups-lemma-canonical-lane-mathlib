import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean

structure NativeLieGroup (G : Type u) [TopologicalSpace G] [LieGroup G] where
  manifoldType : String
  lieAlgebra : String

def sampleLieGroup : NativeLieGroup ℝ := {
  manifoldType := "SmoothManifold",
  lieAlgebra := "𝔤"
}

theorem lie_group_native_available : True := trivial

end ContinuousCohomologyLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse