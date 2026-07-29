import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraMonomialOrderPackage where
  alphabetType : Type u
  freeAlgebra : Type u
  freeAlgebraRing : Ring freeAlgebra
  monomialOrder : freeAlgebra → freeAlgebra → Prop
  monomialOrderTotal : ∀ x y : freeAlgebra, monomialOrder x y ∨ monomialOrder y x
  monomialOrderTransitive : ∀ x y z : freeAlgebra, monomialOrder x y → monomialOrder y z → monomialOrder x z
  monomialOrderAntisymmetric : ∀ x y : freeAlgebra, monomialOrder x y → monomialOrder y x → x = y
  monomialOrderCompatible : ∀ a b x y : freeAlgebra, monomialOrder a b → monomialOrder (a * x) (b * y)
  monomialOrderClosed : Prop
  monomialOrderClosedTerm : monomialOrderClosed

structure FreeAlgebraMonomialOrderEvidence (M : FreeAlgebraMonomialOrderPackage) where
  monomialOrderClosedEvidence : M.monomialOrderClosed

def FreeAlgebraMonomialOrderClosed (M : FreeAlgebraMonomialOrderPackage) : Prop :=
  M.monomialOrderClosed

theorem free_algebra_monomial_order_closed_from_evidence (M : FreeAlgebraMonomialOrderPackage)
    (E : FreeAlgebraMonomialOrderEvidence M) : FreeAlgebraMonomialOrderClosed M :=
  E.monomialOrderClosedEvidence

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse
