import canonicalLaneMathlib.AdmissibleClass
import FreeAlgebrasCanonicalLaneLean.FreeAlgebraBridgeLemmas
import FreeAlgebrasCanonicalLaneLean.FreeAlgebraGateLemmas

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

def ConstrainedFreeAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_algebra_endgame (A : AdmissibleClass) : ConstrainedFreeAlgebraClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse
