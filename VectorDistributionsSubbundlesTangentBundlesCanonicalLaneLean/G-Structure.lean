import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure GStructurePackage where
  frameBundle : Type u
  group : Type v
  reduction : Prop
  torsionFree : Prop
  integrable : Prop
  integrableTerm : integrable

def GStructureClosed (G : GStructurePackage) : Prop :=
  G.integrable

theorem g_structure_closed_from_evidence (G : GStructurePackage) : GStructureClosed G :=
  G.integrableTerm

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse