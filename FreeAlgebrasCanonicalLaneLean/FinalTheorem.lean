import canonicalLaneMathlib.AdmissibleClass
import FreeAlgebrasCanonicalLaneLean.MonoidAlgebras
import FreeAlgebrasCanonicalLaneLean.FreeAlgebraBasis
import FreeAlgebrasCanonicalLaneLean.FreeAlgebraUniversalProperty

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

def ConstrainedFreeAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_algebra_endgame (A : AdmissibleClass) :
    ConstrainedFreeAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse