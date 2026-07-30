import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure DecayEffectorRecruitment where
  smg6 : Type u
  smg5 : Type v
  smg7 : Type w
  decappingComplex : Type x
  deadenylationComplex : Type y
  exosome : Type z
  endonucleaseCleavage : Prop
  decappingActivation : Prop
  deadenylationRecruitment : Prop
  exosomeDegradation : Prop
  mrnaDecayComplete : Prop

structure DecayEffectorEvidence (D : DecayEffectorRecruitment) where
  endonucleaseCleavageClosed : D.endonucleaseCleavage
  decappingActivationClosed : D.decappingActivation
  deadenylationRecruitmentClosed : D.deadenylationRecruitment
  exosomeDegradationClosed : D.exosomeDegradation
  mrnaDecayCompleteClosed : D.mrnaDecayComplete

def DecayEffectorRecruitmentClosed (D : DecayEffectorRecruitment) : Prop :=
  D.endonucleaseCleavage ∧ D.decappingActivation ∧ D.deadenylationRecruitment ∧
  D.exosomeDegradation ∧ D.mrnaDecayComplete

theorem decay_effector_recruitment_closed_from_evidence (D : DecayEffectorRecruitment)
    (E : DecayEffectorEvidence D) : DecayEffectorRecruitmentClosed D := by
  exact And.intro E.endonucleaseCleavageClosed
    (And.intro E.decappingActivationClosed
      (And.intro E.deadenylationRecruitmentClosed
        (And.intro E.exosomeDegradationClosed E.mrnaDecayCompleteClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse