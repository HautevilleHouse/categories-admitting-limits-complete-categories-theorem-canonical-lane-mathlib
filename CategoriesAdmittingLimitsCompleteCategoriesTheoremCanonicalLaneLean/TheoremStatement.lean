import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure CategoriesAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  category : Type
  limitsExist : Prop
  conclusion : limitsExist

def CategoriesWitnessClosed (O : CategoriesAdmittedObject) : Prop :=
  O.limitsExist

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse