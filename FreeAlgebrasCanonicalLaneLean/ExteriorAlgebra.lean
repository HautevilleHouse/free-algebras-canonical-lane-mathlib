import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.TensorAlgebra

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure ExteriorAlgebraPackage (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) where
  exteriorQuotient : Type
  quotientMap : T.tensorAlgebra.carrier → exteriorQuotient
  anticommutative : Prop
  universalProperty : Prop

structure ExteriorAlgebraEvidence (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) (E : ExteriorAlgebraPackage k V T) where
  quotientMapClosed : Function.Surjective E.quotientMap
  anticommutativeClosed : E.anticommutative
  universalPropertyClosed : E.universalProperty

def ExteriorAlgebraClosed (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) (E : ExteriorAlgebraPackage k V T) : Prop :=
  Function.Surjective E.quotientMap ∧ E.anticommutative ∧ E.universalProperty

theorem exterior_algebra_closed_from_evidence (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) (E : ExteriorAlgebraPackage k V T) (Ev : ExteriorAlgebraEvidence k V T E) : ExteriorAlgebraClosed k V T E :=
  And.intro Ev.quotientMapClosed (And.intro Ev.anticommutativeClosed Ev.universalPropertyClosed)

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse