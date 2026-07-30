import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure RNAProcessingPackage where
  prematureStopCodonDetected : Prop
  splicingCompleted : Prop
  polyadenylationStatus : Prop
  nuclearExportSignals : Prop

structure RNAProcessingEvidence (R : RNAProcessingPackage) where
  prematureStopCodonDetectedClosed : R.prematureStopCodonDetected
  splicingCompletedClosed : R.splicingCompleted
  polyadenylationStatusClosed : R.polyadenylationStatus
  nuclearExportSignalsClosed : R.nuclearExportSignals

def RNAProcessingClosed (R : RNAProcessingPackage) : Prop :=
  R.prematureStopCodonDetected ∧ R.splicingCompleted ∧ R.polyadenylationStatus ∧ R.nuclearExportSignals

theorem rna_processing_closed_from_evidence (R : RNAProcessingPackage) (E : RNAProcessingEvidence R) : RNAProcessingClosed R := by
  exact And.intro E.prematureStopCodonDetectedClosed (And.intro E.splicingCompletedClosed (And.intro E.polyadenylationStatusClosed E.nuclearExportSignalsClosed))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse