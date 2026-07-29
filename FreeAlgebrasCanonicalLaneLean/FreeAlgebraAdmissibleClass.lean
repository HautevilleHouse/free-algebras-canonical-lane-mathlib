import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeAlgebrasCanonicalLaneLean

structure FreeAlgebraAdmittedObject where
  alphabetType : Type u
  freeAlgebra : Type u
  freeAlgebraRing : Ring freeAlgebra
  basis : Set freeAlgebra
  basisCardinality : Cardinal
  admitsBasis : basisCardinality = Cardinal.mk alphabetType
  conclusion : admitsBasis

end FreeAlgebrasCanonicalLaneLean
end HautevilleHouse
