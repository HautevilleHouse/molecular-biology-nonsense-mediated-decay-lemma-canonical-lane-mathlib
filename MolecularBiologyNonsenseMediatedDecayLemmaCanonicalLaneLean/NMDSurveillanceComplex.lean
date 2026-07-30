import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDSurveillanceComplex where
  transcript : Type u
  upf1Recruitment : Type v
  ejcAnchor : Type w
  surveillanceActivated : Prop
  prematureStopCodonDetected : Prop
  degradationInitiated : Prop

structure NMDSurveillanceEvidence (C : NMDSurveillanceComplex) where
  surveillanceActivatedClosed : C.surveillanceActivated
  prematureStopCodonDetectedClosed : C.prematureStopCodonDetected
  degradationInitiatedClosed : C.degradationInitiated

def NMDSurveillanceClosed (C : NMDSurveillanceComplex) : Prop :=
  C.surveillanceActivated ∧ C.prematureStopCodonDetected ∧ C.degradationInitiated

theorem nmd_surveillance_closed_from_evidence (C : NMDSurveillanceComplex)
    (E : NMDSurveillanceEvidence C) : NMDSurveillanceClosed C := by
  exact And.intro E.surveillanceActivatedClosed
    (And.intro E.prematureStopCodonDetectedClosed E.degradationInitiatedClosed)

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse