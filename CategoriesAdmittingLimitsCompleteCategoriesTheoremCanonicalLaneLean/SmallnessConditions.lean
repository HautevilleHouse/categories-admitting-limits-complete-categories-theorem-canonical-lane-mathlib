import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure SmallnessConditionPackage where
  locallySmall : Prop
  smallColimits : Prop
  smallLimits : Prop
  smallHomSets : Prop
  smallObjectArgument : Prop

structure SmallnessConditionEvidence (S : SmallnessConditionPackage) where
  locallySmallClosed : S.locallySmall
  smallColimitsClosed : S.smallColimits
  smallLimitsClosed : S.smallLimits
  smallHomSetsClosed : S.smallHomSets
  smallObjectArgumentClosed : S.smallObjectArgument

def SmallnessConditionClosed (S : SmallnessConditionPackage) : Prop :=
  S.locallySmall ∧ S.smallColimits ∧ S.smallLimits ∧ S.smallHomSets ∧ S.smallObjectArgument

theorem smallness_condition_closed_from_evidence (S : SmallnessConditionPackage)
    (E : SmallnessConditionEvidence S) : SmallnessConditionClosed S := by
  exact And.intro E.locallySmallClosed
    (And.intro E.smallColimitsClosed
      (And.intro E.smallLimitsClosed
        (And.intro E.smallHomSetsClosed E.smallObjectArgumentClosed)))

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse