import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VectorBundleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse