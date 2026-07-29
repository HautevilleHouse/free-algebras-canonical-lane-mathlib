import FreeAlgebrasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FreeAlgebraWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  rfl

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse