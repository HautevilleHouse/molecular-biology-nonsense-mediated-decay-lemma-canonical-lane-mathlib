import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean.UpfBinding

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure DecayActivationPackage (A : AdmissibleClass) (U : UpfBindingPackage A) where
  decapping : Prop
  deadenylation : Prop
  exonucleolyticDegradation : Prop
  endonucleolyticCleavage : Prop
  transcriptClearance : Prop

def DecayActivationClosed (D : DecayActivationPackage A U) : Prop :=
  D.decapping ∧ D.deadenylation ∧ D.exonucleolyticDegradation ∧ D.endonucleolyticCleavage ∧ D.transcriptClearance

structure DecayActivationEvidence (D : DecayActivationPackage A U) where
  decappingClosed : D.decapping
  deadenylationClosed : D.deadenylation
  exonucleolyticDegradationClosed : D.exonucleolyticDegradation
  endonucleolyticCleavageClosed : D.endonucleolyticCleavage
  transcriptClearanceClosed : D.transcriptClearance

theorem decay_activation_closed_from_evidence (D : DecayActivationPackage A U) (E : DecayActivationEvidence D) :
    DecayActivationClosed D := by
  exact And.intro E.decappingClosed (And.intro E.deadenylationClosed (And.intro E.exonucleolyticDegradationClosed (And.intro E.endonucleolyticCleavageClosed E.transcriptClearanceClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse