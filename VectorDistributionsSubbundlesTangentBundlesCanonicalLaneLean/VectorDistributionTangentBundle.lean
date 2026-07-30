import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure VectorDistributionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  tangentBundle : Type v
  subbundle : tangentBundle → Prop
  distribution : Type w
  rank : ℕ
  involutive : Prop
  involutiveTerm : involutive

def VectorDistributionClosed (V : VectorDistributionPackage) : Prop :=
  V.involutive

theorem vector_distribution_closed_from_evidence (V : VectorDistributionPackage) : VectorDistributionClosed V :=
  V.involutiveTerm

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse