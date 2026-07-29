import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure LexicographicOrderingPackage where
  alphabet : Type u
  totalOrder : Prop
  lexicographicComparison : Prop
  transitivity : Prop
  antisymmetry : Prop
  totalPreorder : totalOrder ∧ lexicographicComparison → transitivity ∧ antisymmetry

def LexicographicOrderingClosed (L : LexicographicOrderingPackage) : Prop :=
  L.totalOrder ∧ L.lexicographicComparison ∧ L.transitivity ∧ L.antisymmetry

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
