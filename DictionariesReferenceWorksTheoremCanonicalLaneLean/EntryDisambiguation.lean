import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure EntryDisambiguation where
  polysemyResolution : Prop
  partOfSpeechTagging : Prop
  contextDisambiguation : Prop
  ambiguityBound : ℕ

def DisambiguationAdmissible (E : EntryDisambiguation) : Prop :=
  E.polysemyResolution ∧ E.contextDisambiguation

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse