import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDUPF1RegulationPackage where
  upf1PhosphorylationState : PhosphorylationStatus
  upf1ATPaseActivity : ATPaseActivityLevel
  upf1HelicaseProcessivity : HelicaseProcessivityIndex
  upf1InteractionWithUPF2 : UPF2BindingAffinity
  upf1NuclearCytoplasmicShuttling : ShuttlingRate

structure NMDUPF1RegulationEvidence (U : NMDUPF1RegulationPackage) where
  upf1PhosphorylationStateClosed : U.upf1PhosphorylationState = PhosphorylationStatus.Phosphorylated
  upf1ATPaseActivityClosed : U.upf1ATPaseActivity ≥ 0.5
  upf1HelicaseProcessivityClosed : U.upf1HelicaseProcessivity > 0.8
  upf1InteractionWithUPF2Closed : U.upf1InteractionWithUPF2 > 0.0
  upf1NuclearCytoplasmicShuttlingClosed : U.upf1NuclearCytoplasmicShuttling > 0.0

def NMDUPF1RegulationClosed (U : NMDUPF1RegulationPackage) : Prop :=
  U.upf1PhosphorylationState = PhosphorylationStatus.Phosphorylated ∧
  U.upf1ATPaseActivity ≥ 0.5 ∧
  U.upf1HelicaseProcessivity > 0.8 ∧
  U.upf1InteractionWithUPF2 > 0.0 ∧
  U.upf1NuclearCytoplasmicShuttling > 0.0

theorem nmd_upf1_regulation_closed_from_evidence
    (U : NMDUPF1RegulationPackage) (E : NMDUPF1RegulationEvidence U) :
    NMDUPF1RegulationClosed U := by
  refine And.intro E.upf1PhosphorylationStateClosed (And.intro E.upf1ATPaseActivityClosed
    (And.intro E.upf1HelicaseProcessivityClosed (And.intro E.upf1InteractionWithUPF2Closed E.upf1NuclearCytoplasmicShuttlingClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse