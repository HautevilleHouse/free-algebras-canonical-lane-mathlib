import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraConstruction

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure GradedStructurePackage {R : Type u} [CommRing R] {X : Type v}
    (F : FreeAlgebraPackage R X) where
  grade : ℕ → Submodule R F.carrier
  gradeMul : ∀ m n, grade m * grade n ⊆ grade (m + n)
  directSum : ⨁ n, grade n ≃ₗ[R] F.carrier

structure GradedStructureEvidence {R : Type u} [CommRing R] {X : Type v}
    {F : FreeAlgebraPackage R X} (G : GradedStructurePackage F) where
  gradeMulClosed : G.gradeMul
  directSumClosed : G.directSum

def GradedStructureClosed {R : Type u} [CommRing R] {X : Type v}
    {F : FreeAlgebraPackage R X} (G : GradedStructurePackage F) : Prop :=
  G.gradeMul ∧ G.directSum

theorem graded_structure_closed_from_evidence
    {R : Type u} [CommRing R] {X : Type v}
    {F : FreeAlgebraPackage R X} (G : GradedStructurePackage F)
    (E : GradedStructureEvidence G) : GradedStructureClosed G := by
  exact And.intro E.gradeMulClosed E.directSumClosed

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse