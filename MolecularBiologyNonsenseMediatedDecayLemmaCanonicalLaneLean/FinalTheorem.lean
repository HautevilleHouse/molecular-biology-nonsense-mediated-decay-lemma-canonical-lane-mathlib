import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean.BridgeLemmas
import MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

def ConstrainedNMDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nmd_endgame (A : AdmissibleClass) :
    ConstrainedNMDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse