import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraOverField (k : Type) [Field k] (X : Type) where
  carrier : Type
  isAlgebra : Algebra k carrier
  universalProperty : Prop
  basis : Set carrier
  basisIndex : ℕ

structure FreeAlgebraBasis (k : Type) [Field k] (X : Type) (A : FreeAlgebraOverField k X) where
  vectors : A.carrier → A.carrier
  linearIndependence : LinearIndependent k vectors
  spanning : Submodule.span k (Set.range vectors) = ⊤

structure FreeAlgebraHom (k : Type) [Field k] (X Y : Type) (A : FreeAlgebraOverField k X) (B : FreeAlgebraOverField k Y) where
  toFun : A.carrier → B.carrier
  isAlgebraHom : AlgebraHom k A.carrier B.carrier

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse