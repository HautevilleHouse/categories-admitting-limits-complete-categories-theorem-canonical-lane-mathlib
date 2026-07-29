import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean.SmallCategories

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure Cocone {C : SmallCategory} {J : SmallCategory} (F : Functor J C) where
  apex : C.Obj
  legs : (j : J.Obj) → C.Hom (F.objMap j) apex
  commutes : ∀ {i j : J.Obj} (f : J.Hom i j), C.comp (F.homMap f) (legs j) = legs i

structure Colimit {C : SmallCategory} {J : SmallCategory} (F : Functor J C) where
  cocone : Cocone F
  universal : ∀ (other : Cocone F), ∃! (m : C.Hom cocone.apex other.apex),
    ∀ (j : J.Obj), C.comp (cocone.legs j) m = other.legs j

def HasColimitsOfShape (C : SmallCategory) (J : SmallCategory) : Prop :=
  ∀ (F : Functor J C), Nonempty (Colimit F)

def CocompleteCategory (C : SmallCategory) : Prop :=
  ∀ (J : SmallCategory), HasColimitsOfShape C J

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse