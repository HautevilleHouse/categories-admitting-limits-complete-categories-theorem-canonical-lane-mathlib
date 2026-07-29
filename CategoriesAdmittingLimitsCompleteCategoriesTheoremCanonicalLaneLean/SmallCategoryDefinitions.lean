import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure CategoryPackage where
  objectType : Type u
  morphismType : objectType -> objectType -> Type v
  identity : (X : objectType) -> morphismType X X
  compose : {X Y Z : objectType} -> morphismType X Y -> morphismType Y Z -> morphismType X Z
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop

structure SmallCategoryPackage where
  category : CategoryPackage
  isSmall : Prop

structure SmallCategoryEvidence (C : SmallCategoryPackage) where
  associativityClosed : C.category.associativity
  identityLeftClosed : C.category.identityLeft
  identityRightClosed : C.category.identityRight
  isSmallClosed : C.isSmall

def SmallCategoryClosed (C : SmallCategoryPackage) : Prop :=
  C.category.associativity ∧ C.category.identityLeft ∧ C.category.identityRight ∧ C.isSmall

theorem small_category_closed_from_evidence (C : SmallCategoryPackage)
    (E : SmallCategoryEvidence C) : SmallCategoryClosed C := by
  exact And.intro E.associativityClosed (And.intro E.identityLeftClosed (And.intro E.identityRightClosed E.isSmallClosed))

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse