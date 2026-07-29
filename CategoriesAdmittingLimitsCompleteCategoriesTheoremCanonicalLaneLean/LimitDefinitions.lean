import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean.SmallCategories

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure Cone {C : SmallCategory} {J : SmallCategory} (F : Functor J C) where
  apex : C.Obj
  legs : (j : J.Obj) → C.Hom apex (F.objMap j)
  commutes : ∀ {i j : J.Obj} (f : J.Hom i j), C.comp (legs i) (F.homMap f) = legs j

structure Limit {C : SmallCategory} {J : SmallCategory} (F : Functor J C) where
  cone : Cone F
  universal : ∀ (other : Cone F), ∃! (m : C.Hom other.apex cone.apex),
    ∀ (j : J.Obj), C.comp m (cone.legs j) = other.legs j

def HasLimitsOfShape (C : SmallCategory) (J : SmallCategory) : Prop :=
  ∀ (F : Functor J C), Nonempty (Limit F)

def CompleteCategory (C : SmallCategory) : Prop :=
  ∀ (J : SmallCategory), HasLimitsOfShape C J

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse