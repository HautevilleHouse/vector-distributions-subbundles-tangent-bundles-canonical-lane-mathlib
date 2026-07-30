import canonicalLaneMathlib.AdmissibleClass
import VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.VectorDistributionsAdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure FrobeniusIntegrabilityPackage (A : DistributionAdmissibleClass) where
  involutiveCondition : Prop
  localFraming : Prop
  leafManifold : Type
  leafSmooth : Prop
  leafIntegral : Prop

structure FrobeniusIntegrabilityEvidence {A : DistributionAdmissibleClass}
    (F : FrobeniusIntegrabilityPackage A) where
  involutiveConditionClosed : F.involutiveCondition
  localFramingClosed : F.localFraming
  leafManifoldClosed : F.leafSmooth
  leafIntegralClosed : F.leafIntegral

def FrobeniusIntegrabilityClosed {A : DistributionAdmissibleClass}
    (F : FrobeniusIntegrabilityPackage A) : Prop :=
  F.involutiveCondition ∧ F.localFraming ∧ F.leafSmooth ∧ F.leafIntegral

theorem frobenius_integrability_closed_from_evidence
    {A : DistributionAdmissibleClass} (F : FrobeniusIntegrabilityPackage A)
    (E : FrobeniusIntegrabilityEvidence F) : FrobeniusIntegrabilityClosed F := by
  exact And.intro E.involutiveConditionClosed
    (And.intro E.localFramingClosed
      (And.intro E.leafManifoldClosed E.leafIntegralClosed))

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse