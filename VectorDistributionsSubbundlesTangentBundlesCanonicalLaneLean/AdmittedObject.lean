import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure ManifoldObject where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop

structure VectorBundleObject where
  base : ManifoldObject
  totalSpace : Type
  projection : totalSpace → base.carrier
  fiber : base.carrier → Type
  vectorSpaceStructure : ∀ x : base.carrier, AddCommGroup (fiber x) ∧ Module ℝ (fiber x)

structure SubbundleObject (B : VectorBundleObject) where
  totalSubspace : Type
  inclusion : totalSubspace → B.totalSpace
  fiberSubspace : ∀ x : B.base.carrier, Submodule ℝ (B.fiber x)

structure DistributionObject (M : ManifoldObject) where
  subbundle : SubbundleObject (tangentBundle M)
  smooth : Prop

structure AdmittedObject where
  manifold : ManifoldObject
  distribution : DistributionObject manifold
  integrability : Prop
  conclusion : integrability

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse