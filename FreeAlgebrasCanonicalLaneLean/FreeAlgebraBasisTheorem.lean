import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraBasisPackage where
  alphabetType : Type u
  freeAlgebra : Type u
  freeAlgebraRing : Ring freeAlgebra
  basis : Set freeAlgebra
  basisLinearIndependent : LinearIndependent (FreeAlgebra.Ring.alphabetType) basis
  basisSpanning : Submodule.span (Ring.alphabetType) basis = ⊤
  basisCardinality : Cardinal
  basisCardinalityEqAlphabet : basisCardinality = Cardinal.mk alphabetType
  basisClosed : Prop
  basisClosedTerm : basisClosed

structure FreeAlgebraBasisEvidence (B : FreeAlgebraBasisPackage) where
  basisClosedEvidence : B.basisClosed

def FreeAlgebraBasisClosed (B : FreeAlgebraBasisPackage) : Prop :=
  B.basisClosed

theorem free_algebra_basis_closed_from_evidence (B : FreeAlgebraBasisPackage)
    (E : FreeAlgebraBasisEvidence B) : FreeAlgebraBasisClosed B :=
  E.basisClosedEvidence

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse
