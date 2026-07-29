import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure DefinitionClosurePackage where
  closedUnderCircularity : Prop
  primitiveTerms : Prop
  definitionalEquivalence : Prop
  conservativity : Prop

def DefinitionBridgeClosed (D : DefinitionClosurePackage) : Prop :=
  D.closedUnderCircularity ∧ D.primitiveTerms

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse