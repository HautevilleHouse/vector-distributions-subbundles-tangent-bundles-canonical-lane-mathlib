import VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.TangentBundle

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure Subbundle (M : ManifoldObject) (TM : TangentBundle M) where
  totalSubspace : Type
  inclusion : totalSubspace → TM.totalSpace
  fiberSubspace : ∀ x : M.carrier, Submodule ℝ (TM.fiber x)
  smooth : Prop

structure SubbundleSection (M : ManifoldObject) (TM : TangentBundle M) (S : Subbundle M TM) where
  sectionMap : M.carrier → S.totalSubspace
  smooth : Prop
  compatibility : ∀ x : M.carrier, TM.projection (S.inclusion (sectionMap x)) = x

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse