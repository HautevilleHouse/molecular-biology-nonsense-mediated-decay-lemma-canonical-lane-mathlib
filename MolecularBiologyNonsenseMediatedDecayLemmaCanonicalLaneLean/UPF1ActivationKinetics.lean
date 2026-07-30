import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure UPF1ActivationKinetics where
  upf1Phosphorylation : Prop
  atpHydrolysis : Prop
  helicaseActivity : Prop
  substrateUnwinding : Prop
  kineticCompetence : Prop

structure UPF1KineticsEvidence (K : UPF1ActivationKinetics) where
  upf1PhosphorylationClosed : K.upf1Phosphorylation
  atpHydrolysisClosed : K.atpHydrolysis
  helicaseActivityClosed : K.helicaseActivity
  substrateUnwindingClosed : K.substrateUnwinding
  kineticCompetenceClosed : K.kineticCompetence

def UPF1ActivationKineticsClosed (K : UPF1ActivationKinetics) : Prop :=
  K.upf1Phosphorylation ∧ K.atpHydrolysis ∧ K.helicaseActivity ∧
  K.substrateUnwinding ∧ K.kineticCompetence

theorem upf1_activation_kinetics_closed_from_evidence (K : UPF1ActivationKinetics)
    (E : UPF1KineticsEvidence K) : UPF1ActivationKineticsClosed K := by
  exact And.intro E.upf1PhosphorylationClosed
    (And.intro E.atpHydrolysisClosed
      (And.intro E.helicaseActivityClosed
        (And.intro E.substrateUnwindingClosed E.kineticCompetenceClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse