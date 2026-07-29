import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebra (X : Type u) where
  carrier : Type v
  mul : carrier → carrier → carrier
  add : carrier → carrier → carrier
  smul : ℕ → carrier → carrier
  addCommSemigroup : AddCommSemigroup carrier
  mulSemigroup : Semigroup carrier
  distrib : MulDistrib mul add
  freeGenerators : X → carrier
  universalProperty : ∀ (A : Type w) [Semiring A] (f : X → A), ∃! φ : carrier → A, φ ∘ freeGenerators = f

def FreeAlgebraAdmittedObject (X : Type u) : AdmissibleClass where
  object := FreeAlgebra X
  endpointSatisfied := True
  remainderRecorded := False
  gateWitness := Or.inl True.intro

structure FreeAlgebraMorphism (A B : FreeAlgebra ℕ) where
  hom : A.carrier → B.carrier
  respectsMul : ∀ x y, hom (A.mul x y) = B.mul (hom x) (hom y)
  respectsAdd : ∀ x y, hom (A.add x y) = B.add (hom x) (hom y)

def FreeAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse