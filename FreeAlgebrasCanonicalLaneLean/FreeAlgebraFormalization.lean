import canonicalLaneMathlib.AdmissibleClass
import FreeAlgebrasCanonicalLaneLean.FreeAlgebraStructure
import FreeAlgebrasCanonicalLaneLean.UniversalProperty
import FreeAlgebrasCanonicalLaneLean.FreeMonoidAlgebras
import FreeAlgebrasCanonicalLaneLean.TensorFreeAlgebras

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraFormalizationPackage where
  baseFreeAlgebra : FreeAlgebra ℕ
  universalProperty : UniversalPropertyPackage ℕ
  freeMonoidVersion : FreeMonoidAlgebra ℕ
  tensorVersion : TensorFreeAlgebra ℕ
  compatProof : ∀ (x : baseFreeAlgebra.carrier),
    universalProperty.inducedHomomorphism x = freeMonoidVersion.basis x

def FormalizationEvidence (P : FreeAlgebraFormalizationPackage) : Prop :=
  bridgeClosed (FreeAlgebraAdmittedObject ℕ) ∧
  gateClosed (FreeAlgebraAdmittedObject ℕ) ∧
  UniversalPropertyClosed P.universalProperty

theorem formalization_evidence_implies_closure (P : FreeAlgebraFormalizationPackage) :
  bridgeClosed (FreeAlgebraAdmittedObject ℕ) ∧ gateClosed (FreeAlgebraAdmittedObject ℕ) := by
  exact And.intro (bridge_from_admissible_class _) (gate_from_admissible_class _)

def FreeAlgebraFinalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem free_algebra_endgame (A : AdmissibleClass) : FreeAlgebraFinalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse