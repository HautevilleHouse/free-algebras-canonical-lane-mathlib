import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure MonoidAlgebraStructure where
  carrier : Type u
  monoid : Monoid carrier
  semiring : Semiring carrier
  compatible : Prop

structure FreeMonoidFunctor where
  A : Type u
  freeMonoid : MonoidAlgebraStructure
  canonicalMap : A -> freeMonoid.carrier
  universalProperty : Prop

structure MonoidAlgebraEvidence (F : FreeMonoidFunctor) where
  carrierClosed : F.freeMonoid.carrier = F.freeMonoid.carrier
  monoidClosed : F.freeMonoid.monoid = F.freeMonoid.monoid
  semiringClosed : F.freeMonoid.semiring = F.freeMonoid.semiring
  compatibleClosed : F.freeMonoid.compatible
  canonicalMapClosed : F.canonicalMap = F.canonicalMap
  universalPropertyClosed : F.universalProperty

def MonoidAlgebraClosed (F : FreeMonoidFunctor) : Prop :=
  F.freeMonoid.compatible ∧ F.universalProperty

theorem monoid_algebra_closed_from_evidence (F : FreeMonoidFunctor)
    (E : MonoidAlgebraEvidence F) : MonoidAlgebraClosed F := by
  exact And.intro E.compatibleClosed E.universalPropertyClosed

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse