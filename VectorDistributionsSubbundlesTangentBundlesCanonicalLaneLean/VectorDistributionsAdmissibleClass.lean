import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure VectorDistributionSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  tangentBundle : Type
  subbundle : Type
  distribution : Type
  smoothDistribution : Prop
  involutive : Prop
  integrable : Prop

structure AdmittedDistributionObject where
  space : VectorDistributionSpace
  distributionSmooth : space.smoothDistribution
  distributionInvolutive : space.involutive
  distributionIntegrable : space.integrable
  conclusion : distributionIntegrable

structure DistributionAdmissibleClass where
  object : AdmittedDistributionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def distributionAdmittedClosure (A : DistributionAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse