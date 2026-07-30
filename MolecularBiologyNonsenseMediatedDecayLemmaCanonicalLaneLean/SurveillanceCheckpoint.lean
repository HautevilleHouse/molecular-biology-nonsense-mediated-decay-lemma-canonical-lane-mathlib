import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean.DecayActivation

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure SurveillanceCheckpointPackage (A : AdmissibleClass) (U : UpfBindingPackage A) (D : DecayActivationPackage A U) where
  stopCodonRecognition : Prop
  ejcDependentActivation : Prop
  abortedTranslation : Prop
  mrnaSurveillance : Prop
  nmdCommitment : Prop

def SurveillanceCheckpointClosed (S : SurveillanceCheckpointPackage A U D) : Prop :=
  S.stopCodonRecognition ∧ S.ejcDependentActivation ∧ S.abortedTranslation ∧ S.mrnaSurveillance ∧ S.nmdCommitment

structure SurveillanceCheckpointEvidence (S : SurveillanceCheckpointPackage A U D) where
  stopCodonRecognitionClosed : S.stopCodonRecognition
  ejcDependentActivationClosed : S.ejcDependentActivation
  abortedTranslationClosed : S.abortedTranslation
  mrnaSurveillanceClosed : S.mrnaSurveillance
  nmdCommitmentClosed : S.nmdCommitment

theorem surveillance_checkpoint_closed_from_evidence (S : SurveillanceCheckpointPackage A U D) (E : SurveillanceCheckpointEvidence S) :
    SurveillanceCheckpointClosed S := by
  exact And.intro E.stopCodonRecognitionClosed (And.intro E.ejcDependentActivationClosed (And.intro E.abortedTranslationClosed (And.intro E.mrnaSurveillanceClosed E.nmdCommitmentClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse