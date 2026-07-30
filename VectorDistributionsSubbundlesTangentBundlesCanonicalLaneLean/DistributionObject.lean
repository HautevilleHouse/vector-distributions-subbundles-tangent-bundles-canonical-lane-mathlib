import VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.Subbundle

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure DistributionObject (M : ManifoldObject) where
  subbundle : Subbundle M (tangentBundle M)
  involutive : Prop
  rank : ℕ
  rankCondition : ∀ x : M.carrier, finrank ℝ (subbundle.fiberSubspace x) = rank

def involutive (M : ManifoldObject) (D : DistributionObject M) : Prop :=
  D.involutive

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse