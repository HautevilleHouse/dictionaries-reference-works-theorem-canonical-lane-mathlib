import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure DictRefSpace where
  carrier : Type
  ordering : carrier → carrier → Prop

structure DictRefAdmittedObject where
  space : DictRefSpace
  wellFounded : Prop
  totalOrder : Prop
  conclusion : totalOrder

def DictRefWitnessClosed (O : DictRefAdmittedObject) : Prop :=
  O.totalOrder

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
