import canonicalLaneMathlib.AdmissibleClass
import FreeAlgebrasCanonicalLaneLean.FreeAlgebraAdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse
