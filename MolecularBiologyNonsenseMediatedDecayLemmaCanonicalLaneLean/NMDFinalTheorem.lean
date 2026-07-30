import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

def ConstrainedNMDClosure (A : NMDAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nmd_endgame (A : NMDAdmissibleClass) :
    ConstrainedNMDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse
