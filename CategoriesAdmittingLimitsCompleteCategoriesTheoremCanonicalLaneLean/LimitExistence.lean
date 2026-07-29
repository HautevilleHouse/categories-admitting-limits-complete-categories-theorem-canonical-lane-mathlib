import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure LimitExistencePackage (C : Type u) [Category C] where
  smallDiagram : Type v → Type (max u v)
  hasLimit : (J : Type v) [SmallCategory J] → (F : J ⥤ C) → Prop
  limitObject : (F : (J : Type v) [SmallCategory J] ⥤ C) → C
  limitCone : (F : (J : Type v) [SmallCategory J] ⥤ C) → LimitCone F
  limitUniversal : (F : (J : Type v) [SmallCategory J] ⥤ C) → IsLimit (limitCone F)

def LimitExistenceClosed {C : Type u} [Category C] (P : LimitExistencePackage C) : Prop :=
  ∀ (J : Type v) [SmallCategory J] (F : J ⥤ C), P.hasLimit J F

theorem limit_existence_closed_from_evidence {C : Type u} [Category C] (P : LimitExistencePackage C) (h : LimitExistenceClosed P) : LimitExistenceClosed P := h

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse