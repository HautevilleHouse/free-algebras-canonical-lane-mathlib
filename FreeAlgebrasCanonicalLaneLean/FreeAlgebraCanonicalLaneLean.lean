import canonicalLaneMathlib.AdmissibleClass
import FreeAlgebrasCanonicalLaneLean.Generators

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraAdmittedObject where
  generatorSet : Type u
  field : Type v
  algebra : FreeAlgebra generatorSet field

structure FreeAlgebraEndgameState where
  object : FreeAlgebraAdmittedObject

def FreeAlgebraWitnessClosed (O : FreeAlgebraAdmittedObject) : Prop :=
  True

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse