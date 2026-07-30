import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure AdmittedVectorDistObject where
  manifold : Type
  tangentBundle : Type
  distribution : Type
  rankPositive : Prop
  involutive : Prop
  conclusion : involutive

structure AdmissibleClass where
  object : AdmittedVectorDistObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.involutive ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse