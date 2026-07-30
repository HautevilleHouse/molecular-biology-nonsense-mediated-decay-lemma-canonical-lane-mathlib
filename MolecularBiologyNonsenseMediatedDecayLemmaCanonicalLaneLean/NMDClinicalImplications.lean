import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDClinicalImplicationPackage where
  tumorSuppressorGeneNMD : Bool
  dominantNegativeMutationSuppressed : Bool
  readthroughTherapyEfficacy : Float
  nmdInhibitionTherapeuticIndex : Float
  geneticDiseaseSeverityCorrelation : Float
  biomarkerPotential : Bool

structure NMDClinicalImplicationEvidence (I : NMDClinicalImplicationPackage) where
  tumorSuppressorGeneNMDClosed : I.tumorSuppressorGeneNMD = true
  dominantNegativeMutationSuppressedClosed : I.dominantNegativeMutationSuppressed = true
  readthroughTherapyEfficacyClosed : I.readthroughTherapyEfficacy ≥ 0.5
  nmdInhibitionTherapeuticIndexClosed : I.nmdInhibitionTherapeuticIndex ≥ 1.0
  geneticDiseaseSeverityCorrelationClosed : I.geneticDiseaseSeverityCorrelation ≥ 0.0 ∧ I.geneticDiseaseSeverityCorrelation ≤ 1.0
  biomarkerPotentialClosed : I.biomarkerPotential = true

def NMDClinicalImplicationClosed (I : NMDClinicalImplicationPackage) : Prop :=
  I.tumorSuppressorGeneNMD = true ∧
  I.dominantNegativeMutationSuppressed = true ∧
  I.readthroughTherapyEfficacy ≥ 0.5 ∧
  I.nmdInhibitionTherapeuticIndex ≥ 1.0 ∧
  (I.geneticDiseaseSeverityCorrelation ≥ 0.0 ∧ I.geneticDiseaseSeverityCorrelation ≤ 1.0) ∧
  I.biomarkerPotential = true

theorem nmd_clinical_implication_closed_from_evidence
    (I : NMDClinicalImplicationPackage) (E : NMDClinicalImplicationEvidence I) :
    NMDClinicalImplicationClosed I := by
  refine And.intro E.tumorSuppressorGeneNMDClosed (And.intro E.dominantNegativeMutationSuppressedClosed
    (And.intro E.readthroughTherapyEfficacyClosed (And.intro E.nmdInhibitionTherapeuticIndexClosed
      (And.intro (And.intro E.geneticDiseaseSeverityCorrelationClosed.left E.geneticDiseaseSeverityCorrelationClosed.right) E.biomarkerPotentialClosed))))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse