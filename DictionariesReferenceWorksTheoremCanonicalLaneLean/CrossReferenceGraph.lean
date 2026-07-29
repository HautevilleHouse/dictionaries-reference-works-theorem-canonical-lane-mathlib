import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure CrossReferenceGraph where
  vertices : ℕ
  edges : ℕ
  reachability : Prop
  acyclic : Prop
  stronglyConnectedComponents : ℕ

def GraphClosed (G : CrossReferenceGraph) : Prop :=
  G.reachability ∧ G.acyclic

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse