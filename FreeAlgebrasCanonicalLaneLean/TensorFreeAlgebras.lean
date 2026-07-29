import canonicalLaneMathlib.AdmissibleClass
import FreeAlgebrasCanonicalLaneLean.FreeAlgebraStructure

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure TensorFreeAlgebra (V : Type u) [AddCommMonoid V] where
  carrier : Type v
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  smul : ℕ → carrier → carrier
  addCommSemiring : AddCommSemiring carrier
  mulSemiring : Semiring carrier
  tensorSymmetry : ∀ (a b : V), a ⊗ b = b ⊗ a
  linearMapLift : (V → carrier) → (carrier → carrier)

def SymmetricAlgebraAdmittedObject (V : Type u) [AddCommMonoid V] : AdmissibleClass where
  object := TensorFreeAlgebra V
  endpointSatisfied := True
  remainderRecorded := False
  gateWitness := Or.inl True.intro

structure PoincareBirkhoffWittBasis (V : Type u) [AddCommMonoid V] where
  basis : Set (TensorFreeAlgebra V)
  linearlyIndependent : LinearIndependent ℕ basis
  spanning : Span ℕ basis = Set.univ

def TensorFreeAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse