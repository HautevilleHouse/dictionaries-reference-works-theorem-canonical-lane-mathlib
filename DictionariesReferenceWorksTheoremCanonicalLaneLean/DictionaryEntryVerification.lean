import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure DictionaryEntryPackage where
  headword : String
  partOfSpeech : String
  definitions : List String
  pronunciations : List String
  exampleSentences : List String
  synonyms : List String
  antonyms : List String

structure DictionaryEntryEvidence (D : DictionaryEntryPackage) where
  headwordClosed : D.headword ≠ ""
  partOfSpeechClosed : D.partOfSpeech ∈ ["noun", "verb", "adjective", "adverb", "preposition", "conjunction", "interjection", "pronoun", "determiner", "numeral"]
  definitionsClosed : D.definitions ≠ []
  pronunciationsClosed : D.pronunciations.length ≥ 0
  exampleSentencesClosed : D.exampleSentences.length ≥ 0
  synonymsClosed : D.synonyms.length ≥ 0
  antonymsClosed : D.antonyms.length ≥ 0

def DictionaryEntryClosed (D : DictionaryEntryPackage) : Prop :=
  D.headword ≠ "" ∧
  (D.partOfSpeech ∈ ["noun", "verb", "adjective", "adverb", "preposition", "conjunction", "interjection", "pronoun", "determiner", "numeral"]) ∧
  D.definitions ≠ []

theorem dictionary_entry_closed_from_evidence (D : DictionaryEntryPackage) (E : DictionaryEntryEvidence D) : DictionaryEntryClosed D := by
  exact And.intro E.headwordClosed (
    And.intro E.partOfSpeechClosed E.definitionsClosed)

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
