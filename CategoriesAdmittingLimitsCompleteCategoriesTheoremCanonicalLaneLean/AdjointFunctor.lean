import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Prop
  rightAdjoint : Prop
  unitCounit : Prop
  limitPreservation : Prop
  colimitPreservation : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  leftAdjointClosed : A.leftAdjoint
  rightAdjointClosed : A.rightAdjoint
  unitCounitClosed : A.unitCounit
  limitPreservationClosed : A.limitPreservation
  colimitPreservationClosed : A.colimitPreservation

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.leftAdjoint ∧ A.rightAdjoint ∧ A.unitCounit ∧ A.limitPreservation ∧ A.colimitPreservation

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage)
    (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.leftAdjointClosed
    (And.intro E.rightAdjointClosed
      (And.intro E.unitCounitClosed
        (And.intro E.limitPreservationClosed E.colimitPreservationClosed)))

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse