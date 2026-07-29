import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure LexiconStructure where
  lemmaCount : ℕ
  definitionCount : ℕ
  synonymClusters : ℕ
  antinomyPairs : ℕ
  morphologicalDerivations : Prop
  semanticHierarchy : Prop

def LexiconClosed (L : LexiconStructure) : Prop :=
  L.definitionCount > 0 ∧ L.semanticHierarchy

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse