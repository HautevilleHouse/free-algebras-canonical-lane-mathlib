import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.TensorAlgebra

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure SymmetricAlgebraPackage (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) where
  symmetricQuotient : Type
  quotientMap : T.tensorAlgebra.carrier → symmetricQuotient
  isCommutative : Prop
  universalProperty : Prop

structure SymmetricAlgebraEvidence (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) (S : SymmetricAlgebraPackage k V T) where
  quotientMapClosed : Function.Surjective S.quotientMap
  isCommutativeClosed : S.isCommutative
  universalPropertyClosed : S.universalProperty

def SymmetricAlgebraClosed (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) (S : SymmetricAlgebraPackage k V T) : Prop :=
  Function.Surjective S.quotientMap ∧ S.isCommutative ∧ S.universalProperty

theorem symmetric_algebra_closed_from_evidence (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) (S : SymmetricAlgebraPackage k V T) (E : SymmetricAlgebraEvidence k V T S) : SymmetricAlgebraClosed k V T S :=
  And.intro E.quotientMapClosed (And.intro E.isCommutativeClosed E.universalPropertyClosed)

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse