import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraPackage (R : Type u) [CommRing R] (X : Type v) where
  carrier : Type (max u v)
  algebraStructure : Algebra R carrier
  universalProperty : Prop
  basis : X → carrier

structure FreeAlgebraConstructionEvidence {R : Type u} [CommRing R] {X : Type v}
    (F : FreeAlgebraPackage R X) where
  basisInjective : Function.Injective F.basis
  universalPropertyClosed : F.universalProperty

def FreeAlgebraConstructionClosed {R : Type u} [CommRing R] {X : Type v}
    (F : FreeAlgebraPackage R X) : Prop :=
  Function.Injective F.basis ∧ F.universalProperty

theorem free_algebra_construction_closed_from_evidence
    {R : Type u} [CommRing R] {X : Type v}
    (F : FreeAlgebraPackage R X) (E : FreeAlgebraConstructionEvidence F) :
    FreeAlgebraConstructionClosed F := by
  exact And.intro E.basisInjective E.universalPropertyClosed

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse