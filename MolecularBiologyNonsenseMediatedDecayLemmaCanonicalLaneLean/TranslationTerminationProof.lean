import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure TranslationTerminationPackage where
  ribosomeStalling : Prop
  eRF1Recruitment : Prop
  eRF3GTPHydrolysis : Prop
  polypeptideRelease : Prop
  nmdInductionSignal : Prop

structure TranslationTerminationEvidence (T : TranslationTerminationPackage) where
  ribosomeStallingClosed : T.ribosomeStalling
  eRF1RecruitmentClosed : T.eRF1Recruitment
  eRF3GTPHydrolysisClosed : T.eRF3GTPHydrolysis
  polypeptideReleaseClosed : T.polypeptideRelease
  nmdInductionSignalClosed : T.nmdInductionSignal

def TranslationTerminationClosed (T : TranslationTerminationPackage) : Prop :=
  T.ribosomeStalling ∧ T.eRF1Recruitment ∧ T.eRF3GTPHydrolysis ∧ T.polypeptideRelease ∧ T.nmdInductionSignal

theorem translation_termination_closed_from_evidence (T : TranslationTerminationPackage) (E : TranslationTerminationEvidence T) : TranslationTerminationClosed T := by
  exact And.intro E.ribosomeStallingClosed
    (And.intro E.eRF1RecruitmentClosed
      (And.intro E.eRF3GTPHydrolysisClosed
        (And.intro E.polypeptideReleaseClosed E.nmdInductionSignalClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse