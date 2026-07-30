import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure TangentBundlePackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] where
  tangentSpace : Type v
  projection : TangentBundle M → M
  smoothStructure : Prop
  vectorBundleStructure : Prop

structure TangentBundleEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M]
    (T : TangentBundlePackage M) where
  smoothStructureClosed : T.smoothStructure
  vectorBundleStructureClosed : T.vectorBundleStructure

def TangentBundleClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M]
    (T : TangentBundlePackage M) : Prop :=
  T.smoothStructure ∧ T.vectorBundleStructure

theorem tangent_bundle_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M]
    (T : TangentBundlePackage M) (E : TangentBundleEvidence T) : TangentBundleClosed T :=
  And.intro E.smoothStructureClosed E.vectorBundleStructureClosed

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse