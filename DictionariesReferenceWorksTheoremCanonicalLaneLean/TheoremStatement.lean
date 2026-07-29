import DictionariesReferenceWorksTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure DictionariesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DictionariesAdmittedObject where
  space : DictionariesSpace
  referenceWorkComplete : Prop
  entryConsistent : Prop
  crossReferenceResolved : Prop
  lexicographicOrder : Prop
  conclusion : referenceWorkComplete ∧ entryConsistent ∧ crossReferenceResolved ∧ lexicographicOrder

def DictionariesWitnessClosed (O : DictionariesAdmittedObject) : Prop :=
  O.referenceWorkComplete ∧ O.entryConsistent ∧ O.crossReferenceResolved ∧ O.lexicographicOrder

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse