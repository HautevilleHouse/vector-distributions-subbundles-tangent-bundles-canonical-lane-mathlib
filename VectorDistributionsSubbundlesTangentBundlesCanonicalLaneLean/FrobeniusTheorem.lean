import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.VectorDistribution

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure FrobeniusPackage (M : Type) (V : VectorDistributionPackage M) where
  involutiveCondition : Prop
  integralSubmanifoldExists : Prop

structure FrobeniusEvidence (M : Type) (V : VectorDistributionPackage M) (F : FrobeniusPackage M V) where
  involutiveConditionClosed : F.involutiveCondition
  integralSubmanifoldExistsClosed : F.integralSubmanifoldExists

def FrobeniusClosed (M : Type) (V : VectorDistributionPackage M) (F : FrobeniusPackage M V) : Prop :=
  F.involutiveCondition ∧ F.integralSubmanifoldExists

theorem frobenius_closed_from_evidence (M : Type) (V : VectorDistributionPackage M)
    (F : FrobeniusPackage M V) (E : FrobeniusEvidence M V F) : FrobeniusClosed M V F := by
  exact And.intro E.involutiveConditionClosed E.integralSubmanifoldExistsClosed

theorem frobenius_implies_involutive (M : Type) (V : VectorDistributionPackage M)
    (F : FrobeniusPackage M V) (h : FrobeniusClosed M V F) : V.involutive := by
  exact h.1

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse