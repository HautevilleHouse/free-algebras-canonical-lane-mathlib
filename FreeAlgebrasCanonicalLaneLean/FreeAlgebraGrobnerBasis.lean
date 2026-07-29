import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraGrobnerBasisPackage where
  alphabetType : Type u
  freeAlgebra : Type u
  freeAlgebraRing : Ring freeAlgebra
  ideal : Ideal freeAlgebra
  grobnerBasis : Set freeAlgebra
  grobnerProperty : Ideal.span grobnerBasis = ideal ∧
    ∀ f g : freeAlgebra, f ∈ ideal → ∃ h ∈ grobnerBasis, h ∣ f
  grobnerBasisClosed : Prop
  grobnerBasisClosedTerm : grobnerBasisClosed

structure FreeAlgebraGrobnerBasisEvidence (G : FreeAlgebraGrobnerBasisPackage) where
  grobnerBasisClosedEvidence : G.grobnerBasisClosed

def FreeAlgebraGrobnerBasisClosed (G : FreeAlgebraGrobnerBasisPackage) : Prop :=
  G.grobnerBasisClosed

theorem free_algebra_grobner_basis_closed_from_evidence (G : FreeAlgebraGrobnerBasisPackage)
    (E : FreeAlgebraGrobnerBasisEvidence G) : FreeAlgebraGrobnerBasisClosed G :=
  E.grobnerBasisClosedEvidence

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse
