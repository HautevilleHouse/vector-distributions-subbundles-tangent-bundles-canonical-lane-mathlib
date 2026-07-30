import canonicalLaneMathlib.AdmissibleClass
import VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.VectorDistributionsAdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure SubbundleStructurePackage (A : DistributionAdmissibleClass) where
  subbundleDefined : Prop
  subbundleRank : Nat
  subbundleSmooth : Prop
  subbundleInvolutive : Prop
  subbundleIntegrable : Prop

structure SubbundleStructureEvidence {A : DistributionAdmissibleClass}
    (S : SubbundleStructurePackage A) where
  subbundleDefinedClosed : S.subbundleDefined
  subbundleSmoothClosed : S.subbundleSmooth
  subbundleInvolutiveClosed : S.subbundleInvolutive
  subbundleIntegrableClosed : S.subbundleIntegrable

def SubbundleStructureClosed {A : DistributionAdmissibleClass}
    (S : SubbundleStructurePackage A) : Prop :=
  S.subbundleDefined ∧ S.subbundleSmooth ∧ S.subbundleInvolutive ∧ S.subbundleIntegrable

theorem subbundle_structure_closed_from_evidence
    {A : DistributionAdmissibleClass} (S : SubbundleStructurePackage A)
    (E : SubbundleStructureEvidence S) : SubbundleStructureClosed S := by
  exact And.intro E.subbundleDefinedClosed
    (And.intro E.subbundleSmoothClosed
      (And.intro E.subbundleInvolutiveClosed E.subbundleIntegrableClosed))

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse