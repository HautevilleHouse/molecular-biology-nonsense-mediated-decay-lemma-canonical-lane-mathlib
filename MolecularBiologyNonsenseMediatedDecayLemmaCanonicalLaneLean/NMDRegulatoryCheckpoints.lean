import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDRegulatoryCheckpoints where
  pioneerRoundOfTranslation : Prop
  ejcRemodelingLicensing : Prop
  upf1ActivationThreshold : Prop
  terminationCollisionCheck : Prop
  decayEffectorCommitment : Prop

structure NMDCheckpointEvidence (R : NMDRegulatoryCheckpoints) where
  pioneerRoundOfTranslationClosed : R.pioneerRoundOfTranslation
  ejcRemodelingLicensingClosed : R.ejcRemodelingLicensing
  upf1ActivationThresholdClosed : R.upf1ActivationThreshold
  terminationCollisionCheckClosed : R.terminationCollisionCheck
  decayEffectorCommitmentClosed : R.decayEffectorCommitment

def NMDRegulatoryCheckpointsClosed (R : NMDRegulatoryCheckpoints) : Prop :=
  R.pioneerRoundOfTranslation ∧ R.ejcRemodelingLicensing ∧ R.upf1ActivationThreshold ∧
  R.terminationCollisionCheck ∧ R.decayEffectorCommitment

theorem nmd_regulatory_checkpoints_closed_from_evidence (R : NMDRegulatoryCheckpoints)
    (E : NMDCheckpointEvidence R) : NMDRegulatoryCheckpointsClosed R := by
  exact And.intro E.pioneerRoundOfTranslationClosed
    (And.intro E.ejcRemodelingLicensingClosed
      (And.intro E.upf1ActivationThresholdClosed
        (And.intro E.terminationCollisionCheckClosed E.decayEffectorCommitmentClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse