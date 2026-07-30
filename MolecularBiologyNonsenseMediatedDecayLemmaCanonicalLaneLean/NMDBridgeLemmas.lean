import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

def bridgeClosed (A : NMDAdmissibleClass) : Prop :=
  NMDWitnessClosed A.object

theorem bridge_from_admissible_class (A : NMDAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse
