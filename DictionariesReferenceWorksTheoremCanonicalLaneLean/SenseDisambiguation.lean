import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure SenseDisambiguationPackage where
  headword : String
  senses : List (String × String)  -- (subsenses, definition)
  domain : String
  selectedSense : Nat

structure SenseDisambiguationEvidence (S : SenseDisambiguationPackage) where
  headwordClosed : S.headword ≠ ""
  sensesNonemptyClosed : S.senses ≠ []
  domainClosed : S.domain ∈ ["general", "technical", "medical", "legal", "scientific", "literary", "archaic", "slang"]
  selectedSenseInRangeClosed : S.selectedSense < S.senses.length

def SenseDisambiguationClosed (S : SenseDisambiguationPackage) : Prop :=
  S.headword ≠ "" ∧
  S.senses ≠ [] ∧
  (S.domain ∈ ["general", "technical", "medical", "legal", "scientific", "literary", "archaic", "slang"]) ∧
  S.selectedSense < S.senses.length

theorem sense_disambiguation_closed_from_evidence (S : SenseDisambiguationPackage) (E : SenseDisambiguationEvidence S) : SenseDisambiguationClosed S := by
  exact And.intro E.headwordClosed (
    And.intro E.sensesNonemptyClosed (
      And.intro E.domainClosed E.selectedSenseInRangeClosed))

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
