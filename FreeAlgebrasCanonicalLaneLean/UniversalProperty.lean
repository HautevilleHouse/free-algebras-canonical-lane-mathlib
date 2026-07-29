import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraDefs

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure UniversalPropertyPackage (k : Type) [Field k] (X : Type) (A : FreeAlgebraOverField k X) where
  initialObject : Type
  uniqueMap : ∀ (B : Type) [Algebra k B] (f : X → B), ∃! φ : A.carrier → B, AlgebraHom k A.carrier B ∧ ∀ x, φ (A.basis x) = f x
  uniqueMapWitness : ∀ (B : Type) [Algebra k B] (f : X → B), Unique (AlgebraHom k A.carrier B)

structure UniversalPropertyEvidence (k : Type) [Field k] (X : Type) (A : FreeAlgebraOverField k X) (U : UniversalPropertyPackage k X A) where
  initialObjectClosed : U.initialObject = A.carrier
  uniqueMapClosed : ∀ (B : Type) [Algebra k B] (f : X → B), ∃! φ : A.carrier → B, AlgebraHom k A.carrier B ∧ ∀ x, φ (A.basis x) = f x

def UniversalPropertyClosed (k : Type) [Field k] (X : Type) (A : FreeAlgebraOverField k X) (U : UniversalPropertyPackage k X A) : Prop :=
  U.initialObject = A.carrier ∧ ∀ (B : Type) [Algebra k B] (f : X → B), ∃! φ : A.carrier → B, AlgebraHom k A.carrier B ∧ ∀ x, φ (A.basis x) = f x

theorem universal_property_closed_from_evidence (k : Type) [Field k] (X : Type) (A : FreeAlgebraOverField k X) (U : UniversalPropertyPackage k X A) (E : UniversalPropertyEvidence k X A U) : UniversalPropertyClosed k X A U :=
  And.intro E.initialObjectClosed E.uniqueMapClosed

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse