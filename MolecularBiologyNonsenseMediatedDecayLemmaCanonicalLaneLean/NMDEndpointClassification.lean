import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDEndpointClassificationPackage where
  decayOutcome : Prop
  mrnaAbrogation : Prop
  noGoDecay : Prop
  endpointMatchesNMDFunction : Prop

structure NMDEndpointClassificationEvidence (E : NMDEndpointClassificationPackage) where
  decayOutcomeClosed : E.decayOutcome
  mrnaAbrogationClosed : E.mrnaAbrogation
  noGoDecayClosed : E.noGoDecay
  endpointMatchesNMDFunctionClosed : E.endpointMatchesNMDFunction

def NMDEndpointClassificationClosed (E : NMDEndpointClassificationPackage) : Prop :=
  E.decayOutcome ∧ E.mrnaAbrogation ∧ E.noGoDecay ∧ E.endpointMatchesNMDFunction

theorem nmd_endpoint_classification_closed_from_evidence
    (E : NMDEndpointClassificationPackage) (Ev : NMDEndpointClassificationEvidence E) :
    NMDEndpointClassificationClosed E := by
  exact And.intro Ev.decayOutcomeClosed
    (And.intro Ev.mrnaAbrogationClosed
      (And.intro Ev.noGoDecayClosed Ev.endpointMatchesNMDFunctionClosed))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse
