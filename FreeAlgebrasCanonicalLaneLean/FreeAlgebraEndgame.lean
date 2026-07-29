import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraConstruction
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraUniversalProperty
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraBasis
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraGradedStructure
import HautevilleHouse.FreeAlgebrasCanonicalLaneLean.FreeAlgebraMapInjectivity

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

def FreeAlgebraAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem free_algebra_admissible_endgame (A : AdmissibleClass) :
    FreeAlgebraAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse