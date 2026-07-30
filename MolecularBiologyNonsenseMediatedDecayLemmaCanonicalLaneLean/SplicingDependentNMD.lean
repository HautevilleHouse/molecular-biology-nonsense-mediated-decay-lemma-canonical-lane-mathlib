import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure SplicingDependentNMDPackage where
  spliceosomeComponents : Prop
  ejcRecruitment : Prop
  nmdEfficiency : Prop
  capBindingProtein : Prop
  
structure SplicingDependentNMDEvidence (S : SplicingDependentNMDPackage) where
  spliceosomeComponentsClosed : S.spliceosomeComponents
  ejcRecruitmentClosed : S.ejcRecruitment
  nmdEfficiencyClosed : S.nmdEfficiency
  capBindingProteinClosed : S.capBindingProtein

def SplicingDependentNMDClosed (S : SplicingDependentNMDPackage) : Prop :=
  S.spliceosomeComponents ∧ S.ejcRecruitment ∧ S.nmdEfficiency ∧ S.capBindingProtein

theorem splicing_dependent_nmd_closed_from_evidence (S : SplicingDependentNMDPackage) (E : SplicingDependentNMDEvidence S) : SplicingDependentNMDClosed S := by
  exact And.intro E.spliceosomeComponentsClosed (And.intro E.ejcRecruitmentClosed (And.intro E.nmdEfficiencyClosed E.capBindingProteinClosed))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse