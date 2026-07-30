import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure EndonucleolyticCleavagePackage where
  smg6Endonuclease : Prop
  cleavageSiteRecognition : Prop
  productFragmentGeneration : Prop
  dissociationRecycling : Prop
  
structure EndonucleolyticCleavageEvidence (E : EndonucleolyticCleavagePackage) where
  smg6EndonucleaseClosed : E.smg6Endonuclease
  cleavageSiteRecognitionClosed : E.cleavageSiteRecognition
  productFragmentGenerationClosed : E.productFragmentGeneration
  dissociationRecyclingClosed : E.dissociationRecycling

def EndonucleolyticCleavageClosed (E : EndonucleolyticCleavagePackage) : Prop :=
  E.smg6Endonuclease ∧ E.cleavageSiteRecognition ∧ E.productFragmentGeneration ∧ E.dissociationRecycling

theorem endonucleolytic_cleavage_closed_from_evidence (E : EndonucleolyticCleavagePackage) (Ev : EndonucleolyticCleavageEvidence E) : EndonucleolyticCleavageClosed E := by
  exact And.intro Ev.smg6EndonucleaseClosed (And.intro Ev.cleavageSiteRecognitionClosed (And.intro Ev.productFragmentGenerationClosed Ev.dissociationRecyclingClosed))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse