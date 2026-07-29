import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean

structure KanExtensionPackage where
  pointwiseKan : Prop
  leftKan : Prop
  rightKan : Prop
  existenceByLimits : Prop
  preservation : Prop

structure KanExtensionEvidence (K : KanExtensionPackage) where
  pointwiseKanClosed : K.pointwiseKan
  leftKanClosed : K.leftKan
  rightKanClosed : K.rightKan
  existenceByLimitsClosed : K.existenceByLimits
  preservationClosed : K.preservation

def KanExtensionClosed (K : KanExtensionPackage) : Prop :=
  K.pointwiseKan ∧ K.leftKan ∧ K.rightKan ∧ K.existenceByLimits ∧ K.preservation

theorem kan_extension_closed_from_evidence (K : KanExtensionPackage)
    (E : KanExtensionEvidence K) : KanExtensionClosed K := by
  exact And.intro E.pointwiseKanClosed
    (And.intro E.leftKanClosed
      (And.intro E.rightKanClosed
        (And.intro E.existenceByLimitsClosed E.preservationClosed)))

end CategoriesAdmittingLimitsCompleteCategoriesTheoremCanonicalLaneLean
end HautevilleHouse