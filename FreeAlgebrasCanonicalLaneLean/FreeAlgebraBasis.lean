import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraBasis (A : Type u) where
  underlyingSet : Set A
  linearIndependent : Prop
  spanning : Prop

structure FreeAlgebraBasisEvidence {A : Type u} (B : FreeAlgebraBasis A) where
  linearIndependentClosed : B.linearIndependent
  spanningClosed : B.spanning

def FreeAlgebraBasisClosed {A : Type u} (B : FreeAlgebraBasis A) : Prop :=
  B.linearIndependent ∧ B.spanning

theorem free_algebra_basis_closed_from_evidence {A : Type u} (B : FreeAlgebraBasis A)
    (E : FreeAlgebraBasisEvidence B) : FreeAlgebraBasisClosed B := by
  exact And.intro E.linearIndependentClosed E.spanningClosed

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse