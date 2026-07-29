import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DictRefAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DictRefWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
