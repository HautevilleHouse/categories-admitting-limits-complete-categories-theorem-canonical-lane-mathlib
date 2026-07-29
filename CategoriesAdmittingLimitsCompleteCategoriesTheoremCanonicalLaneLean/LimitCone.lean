import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean.SmallCategory

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure LimitCone {C : SmallCategory} (J : SmallCategory) (D : J.Obj → C.Obj) where
  apex : C.Obj
  cone : (j : J.Obj) → C.Hom apex (D j)
  universal : ∀ (X : C.Obj) (c : (j : J.Obj) → C.Hom X (D j)), ∃! f : C.Hom X apex, ∀ j, C.comp f (cone j) = c j

def LimitConeClosed {C : SmallCategory} {J : SmallCategory} {D : J.Obj → C.Obj} (L : LimitCone C J D) : Prop :=
  True

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse