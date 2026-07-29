import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure TheoremStatement where
  theoremName : String
  constrainedStatement : Prop
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { theoremName := "Free Algebra Universal Property",
    constrainedStatement := True,
    carriedRemainder := "Classical boundary of free algebra remains carried."
  }

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse