import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DictionariesReferenceWorksTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DictRefWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DictionariesReferenceWorksTheoremCanonicalLaneLean
end HautevilleHouse
