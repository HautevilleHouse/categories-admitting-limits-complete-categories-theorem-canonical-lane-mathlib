import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean.LimitExistence

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure CompleteCategory (C : Type u) [Category C] (L : LimitExistencePackage C) where
  hasAllLimits : LimitExistenceClosed L
  completenessWitness : Prop

def CompleteCategoryClosed {C : Type u} [Category C] {L : LimitExistencePackage C} (K : CompleteCategory C L) : Prop :=
  K.hasAllLimits ∧ K.completenessWitness

theorem complete_category_closed_from_evidence {C : Type u} [Category C] {L : LimitExistencePackage C} (K : CompleteCategory C L) (h : CompleteCategoryClosed K) : CompleteCategoryClosed K := h

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse