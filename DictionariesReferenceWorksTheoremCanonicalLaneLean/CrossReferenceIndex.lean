import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure CrossReferenceIndexPackage where
  sourceEntry : Type u
  targetEntry : Type v
  referenceMapping : Prop
  consistency : Prop
  completeness : referenceMapping → consistency

def CrossReferenceIndexClosed (C : CrossReferenceIndexPackage) : Prop :=
  C.referenceMapping ∧ C.consistency

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
