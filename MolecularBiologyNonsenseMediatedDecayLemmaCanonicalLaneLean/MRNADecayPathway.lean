import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean.SpliceosomeAssembly
import HautevilleHouse.MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean.PtcElegansThreshold
import HautevilleHouse.MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean.Upf1ActivationDynamics

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure MRNADecayPathwayPackage {S : SpliceosomeAssemblyPackage} {P : PTCThresholdPackage} {U : Upf1ActivationPackage} where
  smgProteinsRecruited : Prop
  exosomeActivation : Prop
  mrnaDegradationCompleted : Prop
  pathwayProof : Prop

structure MRNADecayPathwayEvidence {S : SpliceosomeAssemblyPackage} {P : PTCThresholdPackage} {U : Upf1ActivationPackage} (D : MRNADecayPathwayPackage S P U) where
  smgProteinsRecruitedClosed : D.smgProteinsRecruited
  exosomeActivationClosed : D.exosomeActivation
  mrnaDegradationCompletedClosed : D.mrnaDegradationCompleted
  pathwayProofClosed : D.pathwayProof

def MRNADecayPathwayClosed {S : SpliceosomeAssemblyPackage} {P : PTCThresholdPackage} {U : Upf1ActivationPackage} (D : MRNADecayPathwayPackage S P U) : Prop :=
  D.smgProteinsRecruited ∧ D.exosomeActivation ∧ D.mrnaDegradationCompleted ∧ D.pathwayProof

theorem mrna_decay_pathway_closed_from_evidence {S : SpliceosomeAssemblyPackage} {P : PTCThresholdPackage} {U : Upf1ActivationPackage} (D : MRNADecayPathwayPackage S P U) (E : MRNADecayPathwayEvidence D) : MRNADecayPathwayClosed D := by
  exact And.intro E.smgProteinsRecruitedClosed (And.intro E.exosomeActivationClosed (And.intro E.mrnaDegradationCompletedClosed E.pathwayProofClosed))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse