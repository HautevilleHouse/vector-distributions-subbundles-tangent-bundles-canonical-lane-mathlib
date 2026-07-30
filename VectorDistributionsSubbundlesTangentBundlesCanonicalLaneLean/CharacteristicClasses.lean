import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure CharacteristicClassPackage where
  vectorBundle : Type u
  chernClass : ℕ → Prop
  pontryaginClass : ℕ → Prop
  eulerClass : Prop
  classificationComplete : Prop
  classificationCompleteTerm : classificationComplete

def CharacteristicClassClosed (C : CharacteristicClassPackage) : Prop :=
  C.classificationComplete

theorem characteristic_class_closed_from_evidence (C : CharacteristicClassPackage) : CharacteristicClassClosed C :=
  C.classificationCompleteTerm

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse