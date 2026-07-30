import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

def gateClosed (A : NMDAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : NMDAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse
