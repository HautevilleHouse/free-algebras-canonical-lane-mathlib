import FreeAlgebrasCanonicalLaneLean.UniversalProperty

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraPacking (G : Generators) (U : UniversalProperty G) where
  basis : FreeAlgebra G.set ℕ → ℕ
  basisLinearIndependence : Prop
  basisSpanning : Prop

def FreeAlgebraPackingClosed (P : FreeAlgebraPacking) : Prop :=
  P.basisLinearIndependence ∧ P.basisSpanning

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse