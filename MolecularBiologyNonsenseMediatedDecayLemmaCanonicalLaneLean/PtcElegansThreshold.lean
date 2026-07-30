import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure PTCThresholdPackage where
  prematureStopCodonDistance : Nat
  thresholdExceeded : Prop
  eJCUpstream : Prop
  upf1Recognition : Prop

structure PTCThresholdEvidence (P : PTCThresholdPackage) where
  prematureStopCodonDistanceClosed : P.prematureStopCodonDistance ≥ 50
  thresholdExceededClosed : P.thresholdExceeded
  eJCUpstreamClosed : P.eJCUpstream
  upf1RecognitionClosed : P.upf1Recognition

def PTCThresholdClosed (P : PTCThresholdPackage) : Prop :=
  (P.prematureStopCodonDistance ≥ 50) ∧ P.thresholdExceeded ∧ P.eJCUpstream ∧ P.upf1Recognition

theorem ptc_threshold_closed_from_evidence (P : PTCThresholdPackage) (E : PTCThresholdEvidence P) : PTCThresholdClosed P := by
  have hdist : P.prematureStopCodonDistance ≥ 50 := E.prematureStopCodonDistanceClosed
  exact And.intro hdist (And.intro E.thresholdExceededClosed (And.intro E.eJCUpstreamClosed E.upf1RecognitionClosed))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse