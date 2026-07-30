import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure UPF1PhosphorylationPackage where
  smg1Kinase : Prop
  atpBinding : Prop
  helicaseActivity : Prop
  decayActivation : Prop
  
structure UPF1PhosphorylationEvidence (U : UPF1PhosphorylationPackage) where
  smg1KinaseClosed : U.smg1Kinase
  atpBindingClosed : U.atpBinding
  helicaseActivityClosed : U.helicaseActivity
  decayActivationClosed : U.decayActivation

def UPF1PhosphorylationClosed (U : UPF1PhosphorylationPackage) : Prop :=
  U.smg1Kinase ∧ U.atpBinding ∧ U.helicaseActivity ∧ U.decayActivation

theorem upf1_phosphorylation_closed_from_evidence (U : UPF1PhosphorylationPackage) (E : UPF1PhosphorylationEvidence U) : UPF1PhosphorylationClosed U := by
  exact And.intro E.smg1KinaseClosed (And.intro E.atpBindingClosed (And.intro E.helicaseActivityClosed E.decayActivationClosed))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse