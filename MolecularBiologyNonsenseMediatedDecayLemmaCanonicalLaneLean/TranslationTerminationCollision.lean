import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure TranslationTerminationCollision where
  ribosome : Type u
  prematureStopCodon : Prop
  releaseFactors : Type v
  upf1Collision : Prop
  terminationRecognition : Prop
  nmdCommitment : Prop

structure TerminationCollisionEvidence (T : TranslationTerminationCollision) where
  prematureStopCodonClosed : T.prematureStopCodon
  upf1CollisionClosed : T.upf1Collision
  terminationRecognitionClosed : T.terminationRecognition
  nmdCommitmentClosed : T.nmdCommitment

def TranslationTerminationCollisionClosed (T : TranslationTerminationCollision) : Prop :=
  T.prematureStopCodon ∧ T.upf1Collision ∧ T.terminationRecognition ∧ T.nmdCommitment

theorem translation_termination_collision_closed_from_evidence
    (T : TranslationTerminationCollision) (E : TerminationCollisionEvidence T) :
    TranslationTerminationCollisionClosed T := by
  exact And.intro E.prematureStopCodonClosed
    (And.intro E.upf1CollisionClosed
      (And.intro E.terminationRecognitionClosed E.nmdCommitmentClosed))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse