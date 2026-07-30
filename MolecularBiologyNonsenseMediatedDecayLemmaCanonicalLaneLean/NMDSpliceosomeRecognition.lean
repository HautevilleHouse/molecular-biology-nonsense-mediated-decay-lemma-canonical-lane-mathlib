import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDAdmittedObject where
  transcript : Type
  readingFrame : Prop
  prematureStopCodon : Prop
  recognitionMechanism : Prop
  conclusion : recognitionMechanism

structure NMDSpliceosomeRecognitionPackage where
  eJCdeposition : Prop
  ribosomeStalling : Prop
  complexRecruitment : Prop
  nucleaseActivation : Prop
  mrnaDecayInitiation : Prop

structure NMDSpliceosomeRecognitionEvidence (S : NMDSpliceosomeRecognitionPackage) where
  eJCdepositionClosed : S.eJCdeposition
  ribosomeStallingClosed : S.ribosomeStalling
  complexRecruitmentClosed : S.complexRecruitment
  nucleaseActivationClosed : S.nucleaseActivation
  mrnaDecayInitiationClosed : S.mrnaDecayInitiation

def NMDSpliceosomeRecognitionClosed (S : NMDSpliceosomeRecognitionPackage) : Prop :=
  S.eJCdeposition ∧ S.ribosomeStalling ∧ S.complexRecruitment ∧ S.nucleaseActivation ∧ S.mrnaDecayInitiation

theorem nmd_spliceosome_recognition_closed_from_evidence
    (S : NMDSpliceosomeRecognitionPackage) (E : NMDSpliceosomeRecognitionEvidence S) :
    NMDSpliceosomeRecognitionClosed S := by
  exact And.intro E.eJCdepositionClosed
    (And.intro E.ribosomeStallingClosed
      (And.intro E.complexRecruitmentClosed
        (And.intro E.nucleaseActivationClosed E.mrnaDecayInitiationClosed)))

def NMDWitnessClosed (O : NMDAdmittedObject) : Prop :=
  O.recognitionMechanism

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse
