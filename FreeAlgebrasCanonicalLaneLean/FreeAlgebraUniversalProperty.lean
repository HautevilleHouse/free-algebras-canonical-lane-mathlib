import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraStructure (A : Type u) where
  carrier : Type u
  algebra : Algebra (Ring ℕ) carrier
  inclusionMap : A -> carrier
  universalProperty : Prop

structure FreeAlgebraUniversalProperty (A : Type u) (B : Type u) [Add B] [Mul B] [SMul ℕ B] where
  map : FreeAlgebraStructure A -> B
  algebraHomomorphism : Prop
  commutesWithInclusion : Prop

structure UniversalPropertyEvidence (A : Type u) (B : Type u) [Add B] [Mul B] [SMul ℕ B]
    (U : FreeAlgebraUniversalProperty A B) where
  algebraHomomorphismClosed : U.algebraHomomorphism
  commutesWithInclusionClosed : U.commutesWithInclusion

def UniversalPropertyClosed (A : Type u) (B : Type u) [Add B] [Mul B] [SMul ℕ B]
    (U : FreeAlgebraUniversalProperty A B) : Prop :=
  U.algebraHomomorphism ∧ U.commutesWithInclusion

theorem universal_property_closed_from_evidence (A : Type u) (B : Type u) [Add B] [Mul B] [SMul ℕ B]
    (U : FreeAlgebraUniversalProperty A B) (E : UniversalPropertyEvidence A B U) :
    UniversalPropertyClosed A B U := by
  exact And.intro E.algebraHomomorphismClosed E.commutesWithInclusionClosed

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse