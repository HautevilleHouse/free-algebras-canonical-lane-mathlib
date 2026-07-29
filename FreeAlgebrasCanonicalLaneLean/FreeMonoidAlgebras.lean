import canonicalLaneMathlib.AdmissibleClass
import FreeAlgebrasCanonicalLaneLean.FreeAlgebraStructure

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeMonoidAlgebra (M : Type u) [Monoid M] where
  carrier : Type v
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  zero : carrier
  one : carrier
  addCommMonoid : AddCommMonoid carrier
  mulMonoid : Monoid carrier
  distrib : MulDistrib mul add
  basis : M → carrier
  expansionFormula : ∀ (a b : carrier), a.mul b = sumOverPairs a b

def FreeMonoidAlgebraAdmittedObject (M : Type u) [Monoid M] : AdmissibleClass where
  object := FreeMonoidAlgebra M
  endpointSatisfied := True
  remainderRecorded := True
  gateWitness := Or.inr True.intro

structure DirectProductDecomposition (M N : Type u) [Monoid M] [Monoid N] where
  iso : FreeMonoidAlgebra (M × N) → FreeMonoidAlgebra (M) ⊗[ℕ] FreeMonoidAlgebra (N)
  isoInverse : FreeMonoidAlgebra (M) ⊗[ℕ] FreeMonoidAlgebra (N) → FreeMonoidAlgebra (M × N)
  isoInverseIsInverse : ∀ x, isoInverse (iso x) = x

def FreeMonoidAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse