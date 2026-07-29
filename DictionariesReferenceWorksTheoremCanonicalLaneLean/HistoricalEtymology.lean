import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

structure HistoricalEtymology where
  firstAttestation : Prop
  borrowingRelation : ℕ
  cognateIdentification : Prop
  soundChangeRegularity : Prop

def EtymologyClosed (H : HistoricalEtymology) : Prop :=
  H.firstAttestation ∧ H.cognateIdentification

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse