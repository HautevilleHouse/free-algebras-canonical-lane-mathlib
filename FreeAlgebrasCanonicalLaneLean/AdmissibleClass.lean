import FreeAlgebrasCanonicalLaneLean.FreeAlgebraCanonicalLaneLean

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure AdmissibleClass where
  object : FreeAlgebraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreeAlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse