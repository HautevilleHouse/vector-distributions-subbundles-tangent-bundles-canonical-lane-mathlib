import canonicalLaneMathlib.AdmissibleClass
import VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.VectorDistributionsBridgeLemmas

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

def gateClosed (A : DistributionAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DistributionAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse