import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDAdmissibleClass where
  object : NMDAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : NMDAdmissibleClass) : Prop :=
  NMDWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse
