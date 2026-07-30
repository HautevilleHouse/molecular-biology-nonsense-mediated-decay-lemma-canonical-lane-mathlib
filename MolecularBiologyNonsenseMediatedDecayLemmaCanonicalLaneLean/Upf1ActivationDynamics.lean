import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure Upf1ActivationPackage where
  rnaHelicaseActivity : Prop
  atpHydrolysisActivity : Prop
  upf2BindingAffinity : Prop
  phosphorylationState : Prop
  decayInduction : Prop

structure Upf1ActivationEvidence (U : Upf1ActivationPackage) where
  rnaHelicaseActivityClosed : U.rnaHelicaseActivity
  atpHydrolysisActivityClosed : U.atpHydrolysisActivity
  upf2BindingAffinityClosed : U.upf2BindingAffinity
  phosphorylationStateClosed : U.phosphorylationState
  decayInductionClosed : U.decayInduction

def Upf1ActivationClosed (U : Upf1ActivationPackage) : Prop :=
  U.rnaHelicaseActivity ∧ U.atpHydrolysisActivity ∧ U.upf2BindingAffinity ∧ U.phosphorylationState ∧ U.decayInduction

theorem upf1_activation_closed_from_evidence (U : Upf1ActivationPackage) (E : Upf1ActivationEvidence U) : Upf1ActivationClosed U := by
  exact And.intro E.rnaHelicaseActivityClosed
    (And.intro E.atpHydrolysisActivityClosed
      (And.intro E.upf2BindingAffinityClosed
        (And.intro E.phosphorylationStateClosed E.decayInductionClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse