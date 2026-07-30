import canonicalLaneMathlib.AdmissibleClass
import VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.VectorDistributionsAdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

def bridgeClosed (A : DistributionAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : DistributionAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse