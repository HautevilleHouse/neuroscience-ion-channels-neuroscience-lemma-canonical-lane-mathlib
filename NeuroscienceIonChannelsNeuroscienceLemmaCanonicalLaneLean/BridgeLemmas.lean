import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceIonChannelsNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse