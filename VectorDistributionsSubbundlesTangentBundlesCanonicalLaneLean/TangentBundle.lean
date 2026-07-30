import VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean.ManifoldObject

namespace HautevilleHouse
namespace VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean

structure TangentBundle (M : ManifoldObject) where
  totalSpace : Type
  projection : totalSpace → M.carrier
  fiber : M.carrier → Type
  vectorSpaceStructure : ∀ x : M.carrier, AddCommGroup (fiber x) ∧ Module ℝ (fiber x)
  smoothStructure : Prop

def tangentBundle (M : ManifoldObject) : TangentBundle M :=
  { totalSpace := Σ x : M.carrier, TangentSpace M x
    projection := λ p => p.1
    fiber := λ x => TangentSpace M x
    vectorSpaceStructure := λ x => by
      exact TangentSpace.vectorSpace x
    smoothStructure := by
      exact TangentBundle.smoothness M
  }

structure TangentSpace (M : ManifoldObject) (x : M.carrier) where
  derivation : (C^∞ M) → ℝ
  linearity : ∀ (f g : C^∞ M) (a b : ℝ), derivation (a • f + b • g) = a * derivation f + b * derivation g
  leibniz : ∀ (f g : C^∞ M), derivation (f * g) = derivation f * g x + f x * derivation g

end VectorDistributionsSubbundlesTangentBundlesCanonicalLaneLean
end HautevilleHouse