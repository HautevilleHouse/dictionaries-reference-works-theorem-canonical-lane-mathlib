import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure LexicalEntryPackage where
  headword : String
  partOfSpeech : String
  definitions : List String
  pronunciations : List String
  etymologies : List String
  usageNotes : List String

structure LexicalEntryEvidence (L : LexicalEntryPackage) where
  headwordClosed : L.headword = L.headword
  partOfSpeechClosed : L.partOfSpeech ∈ ["noun", "verb", "adjective", "adverb", "preposition", "conjunction", "interjection", "pronoun", "determiner", "numeral"]
  definitionsClosed : L.definitions ≠ []
  pronunciationsClosed : L.pronunciations.length ≥ 0
  etymologiesClosed : L.etymologies.length ≥ 0
  usageNotesClosed : L.usageNotes.length ≥ 0

def LexicalEntryClosed (L : LexicalEntryPackage) : Prop :=
  L.headword = L.headword ∧
  (L.partOfSpeech ∈ ["noun", "verb", "adjective", "adverb", "preposition", "conjunction", "interjection", "pronoun", "determiner", "numeral"]) ∧
  L.definitions ≠ []

theorem lexical_entry_closed_from_evidence (L : LexicalEntryPackage) (E : LexicalEntryEvidence L) : LexicalEntryClosed L := by
  exact And.intro E.headwordClosed (
    And.intro E.partOfSpeechClosed E.definitionsClosed)

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
