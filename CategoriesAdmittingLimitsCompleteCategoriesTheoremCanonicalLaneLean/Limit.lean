import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure Cone (J : SmallCategory) (C : SmallCategory) (F : J.Obj → C.Obj) where
  apex : C.Obj
  proj : (j : J.Obj) → C.Hom apex (F j)
  naturality : ∀ {j k : J.Obj} (f : J.Hom j k), C.comp (proj j) (C.id (F k)) = C.comp (C.id apex) (proj k)

structure Limit (J : SmallCategory) (C : SmallCategory) (F : J.Obj → C.Obj) where
  cone : Cone J C F
  universal : ∀ (other : Cone J C F), ∃! (m : C.Hom other.apex cone.apex), ∀ (j : J.Obj), C.comp m (cone.proj j) = other.proj j

def LimitsClosed (O : AdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse