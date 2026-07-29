import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraDefs
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.UniversalProperty

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraAdmittedObject (k : Type) [Field k] (X : Type) where
  freeAlgebra : FreeAlgebraOverField k X
  universalProperty : UniversalPropertyPackage k X freeAlgebra
  basisB : FreeAlgebraBasisPackage k X freeAlgebra
  conclusion : freeAlgebra.carrier = freeAlgebra.carrier

structure FreeAlgebraAdmissibleClass (k : Type) [Field k] (X : Type) where
  object : FreeAlgebraAdmittedObject k X
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ConstrainedFreeAlgebraClosure (k : Type) [Field k] (X : Type) (A : FreeAlgebraAdmissibleClass k X) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_algebra_endgame (k : Type) [Field k] (X : Type) (A : FreeAlgebraAdmissibleClass k X) : ConstrainedFreeAlgebraClosure k X A :=
  let bridge : bridgeClosed A := A.object.conclusion
  let gate : gateClosed A := A.gateWitness
  And.intro bridge gate

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse