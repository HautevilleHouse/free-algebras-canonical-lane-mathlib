import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraConstruction

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure MapInjectivityPackage {R : Type u} [CommRing R] {X : Type v}
    (F : FreeAlgebraPackage R X) where
  baseMap : R → F.carrier
  baseInjective : Function.Injective baseMap
  basisMap : X → F.carrier
  basisInjective : Function.Injective basisMap
  sumInjective : ∀ (r : R) (x : X), baseMap r ≠ basisMap x

structure MapInjectivityEvidence {R : Type u} [CommRing R] {X : Type v}
    {F : FreeAlgebraPackage R X} (M : MapInjectivityPackage F) where
  baseInjectiveClosed : M.baseInjective
  basisInjectiveClosed : M.basisInjective
  sumInjectiveClosed : M.sumInjective

def MapInjectivityClosed {R : Type u} [CommRing R] {X : Type v}
    {F : FreeAlgebraPackage R X} (M : MapInjectivityPackage F) : Prop :=
  M.baseInjective ∧ M.basisInjective ∧ M.sumInjective

theorem map_injectivity_closed_from_evidence
    {R : Type u} [CommRing R] {X : Type v}
    {F : FreeAlgebraPackage R X} (M : MapInjectivityPackage F)
    (E : MapInjectivityEvidence M) : MapInjectivityClosed M := by
  exact And.intro E.baseInjectiveClosed
    (And.intro E.basisInjectiveClosed E.sumInjectiveClosed)

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse