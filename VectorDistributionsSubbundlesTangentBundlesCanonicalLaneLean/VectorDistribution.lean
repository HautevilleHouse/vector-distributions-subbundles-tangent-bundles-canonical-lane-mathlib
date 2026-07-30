import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure VectorDistributionPackage (M : Type) where
  tangentBundle : Type
  subbundle : Type
  distribution : subbundle → tangentBundle
  involutive : Prop
  rank : Nat

structure VectorDistributionEvidence (M : Type) (V : VectorDistributionPackage M) where
  involutiveClosed : V.involutive
  rankClosed : V.rank > 0

def VectorDistributionClosed (M : Type) (V : VectorDistributionPackage M) : Prop :=
  V.involutive ∧ V.rank > 0

theorem vector_distribution_closed_from_evidence (M : Type) (V : VectorDistributionPackage M)
    (E : VectorDistributionEvidence M V) : VectorDistributionClosed M V := by
  exact And.intro E.involutiveClosed E.rankClosed

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse