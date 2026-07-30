import canonicalLaneMathlib.VectorBundleObjects

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VectorBundleSpace where
  base : Type
  total : Type
  projection : total → base
  fiber : base → Type

def VectorBundleAdmittedObject where
  space : VectorBundleSpace
  smoothSubbundle : Prop
  involutive : Prop
  conclusion : smoothSubbundle ∧ involutive

def VectorBundleWitnessClosed (O : VectorBundleAdmittedObject) : Prop :=
  O.conclusion

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse