import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure LiftingPropertyPackage where
  hornLifting : Prop
  innerHornLifting : Prop
  leftLifting : Prop
  rightLifting : Prop
  compositionClosure : Prop

structure LiftingPropertyEvidence (L : LiftingPropertyPackage) where
  hornLiftingClosed : L.hornLifting
  innerHornLiftingClosed : L.innerHornLifting
  leftLiftingClosed : L.leftLifting
  rightLiftingClosed : L.rightLifting
  compositionClosureClosed : L.compositionClosure

def LiftingPropertyClosed (L : LiftingPropertyPackage) : Prop :=
  L.hornLifting ∧ L.innerHornLifting ∧ L.leftLifting ∧ L.rightLifting ∧ L.compositionClosure

theorem lifting_property_closed_from_evidence (L : LiftingPropertyPackage)
    (E : LiftingPropertyEvidence L) : LiftingPropertyClosed L := by
  exact And.intro E.hornLiftingClosed
    (And.intro E.innerHornLiftingClosed
      (And.intro E.leftLiftingClosed
        (And.intro E.rightLiftingClosed E.compositionClosureClosed)))

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse