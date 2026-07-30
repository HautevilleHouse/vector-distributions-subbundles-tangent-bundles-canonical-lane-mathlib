import HautevilleHouse.VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

def ConstrainedVectorDistClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vector_dist_endgame (A : AdmissibleClass) :
    ConstrainedVectorDistClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse