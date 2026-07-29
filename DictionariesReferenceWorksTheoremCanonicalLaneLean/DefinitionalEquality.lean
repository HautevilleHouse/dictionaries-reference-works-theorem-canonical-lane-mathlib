import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure DefinitionalEqualityPackage where
  definitionBody : Type u
  symbol : String
  canonicalForm : Prop
  provablyEquivalent : Prop
  reducibility : canonicalForm → provablyEquivalent

def DefinitionalEqualityClosed (D : DefinitionalEqualityPackage) : Prop :=
  D.canonicalForm ∧ D.provablyEquivalent

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
