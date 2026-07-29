import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure CrossReferencePackage where
  sourceEntry : String
  targetEntry : String
  relationship : String
  resolved : Prop

structure CrossReferenceEvidence (C : CrossReferencePackage) where
  sourceEntryClosed : C.sourceEntry ≠ ""
  targetEntryClosed : C.targetEntry ≠ ""
  relationshipClosed : C.relationship ∈ ["see", "see also", "compare", "synonym", "antonym", "derived", "etymology"]
  resolvedClosed : C.resolved

def CrossReferenceClosed (C : CrossReferencePackage) : Prop :=
  C.sourceEntry ≠ "" ∧
  C.targetEntry ≠ "" ∧
  (C.relationship ∈ ["see", "see also", "compare", "synonym", "antonym", "derived", "etymology"]) ∧
  C.resolved

theorem cross_reference_closed_from_evidence (C : CrossReferencePackage) (E : CrossReferenceEvidence C) : CrossReferenceClosed C := by
  exact And.intro E.sourceEntryClosed (
    And.intro E.targetEntryClosed (
      And.intro E.relationshipClosed E.resolvedClosed))

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
