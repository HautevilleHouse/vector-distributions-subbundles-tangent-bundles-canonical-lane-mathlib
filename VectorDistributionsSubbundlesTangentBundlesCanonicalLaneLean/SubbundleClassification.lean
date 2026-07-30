import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure SubbundleClassificationPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M] where
  subbundle : Subbundle ℝ M
  involutiveSubbundle : Prop
  integrableSubbundle : Prop
  frobeniusCondition : Prop

structure SubbundleClassificationEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M]
    (S : SubbundleClassificationPackage M) where
  involutiveSubbundleClosed : S.involutiveSubbundle
  integrableSubbundleClosed : S.integrableSubbundle
  frobeniusConditionClosed : S.frobeniusCondition

def SubbundleClassificationClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M]
    (S : SubbundleClassificationPackage M) : Prop :=
  S.involutiveSubbundle ∧ S.integrableSubbundle ∧ S.frobeniusCondition

theorem subbundle_classification_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] [SmoothManifoldWithCorners ℝ M]
    (S : SubbundleClassificationPackage M) (E : SubbundleClassificationEvidence S) : SubbundleClassificationClosed S :=
  And.intro E.involutiveSubbundleClosed
    (And.intro E.integrableSubbundleClosed E.frobeniusConditionClosed)

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse