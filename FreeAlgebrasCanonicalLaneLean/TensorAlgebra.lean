import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraDefs

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure TensorAlgebraPackage (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] where
  tensorAlgebra : FreeAlgebraOverField k (V : Type)
  grading : ℕ → Submodule k (tensorAlgebra.carrier)
  productCompatible : Prop
  universalForLinearMaps : Prop

structure TensorAlgebraEvidence (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) where
  gradingClosed : ∀ n, Submodule.IsGraded (T.grading n) T.tensorAlgebra.carrier
  productCompatibleClosed : T.productCompatible
  universalForLinearMapsClosed : T.universalForLinearMaps

def TensorAlgebraClosed (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) : Prop :=
  (∀ n, Submodule.IsGraded (T.grading n) T.tensorAlgebra.carrier) ∧ T.productCompatible ∧ T.universalForLinearMaps

theorem tensor_algebra_closed_from_evidence (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module k V] (T : TensorAlgebraPackage k V) (E : TensorAlgebraEvidence k V T) : TensorAlgebraClosed k V T :=
  And.intro (And.intro E.gradingClosed (fun n => E.gradingClosed n)) (And.intro E.productCompatibleClosed E.universalForLinearMapsClosed)

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse