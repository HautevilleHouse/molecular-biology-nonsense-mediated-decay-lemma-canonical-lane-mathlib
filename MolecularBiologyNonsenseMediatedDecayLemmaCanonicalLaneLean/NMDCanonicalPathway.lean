import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDCanonicalPathwayPackage where
  prematureTerminationCodonRecognized : Bool
  eRF1eRF3ComplexRecruited : Bool
  UPF1UPF2UPF3ComplexAssembled : Bool
  eIF3Displaced : Bool
  decayComplexRecruited : Bool
  mRNADecayInitiated : Bool
  smgComplexActivated : Bool

structure NMDCanonicalPathwayEvidence (P : NMDCanonicalPathwayPackage) where
  prematureTerminationCodonRecognizedClosed : P.prematureTerminationCodonRecognized = true
  eRF1eRF3ComplexRecruitedClosed : P.eRF1eRF3ComplexRecruited = true
  UPF1UPF2UPF3ComplexAssembledClosed : P.UPF1UPF2UPF3ComplexAssembled = true
  eIF3DisplacedClosed : P.eIF3Displaced = true
  decayComplexRecruitedClosed : P.decayComplexRecruited = true
  mRNADecayInitiatedClosed : P.mRNADecayInitiated = true
  smgComplexActivatedClosed : P.smgComplexActivated = true

def NMDCanonicalPathwayClosed (P : NMDCanonicalPathwayPackage) : Prop :=
  P.prematureTerminationCodonRecognized = true ∧
  P.eRF1eRF3ComplexRecruited = true ∧
  P.UPF1UPF2UPF3ComplexAssembled = true ∧
  P.eIF3Displaced = true ∧
  P.decayComplexRecruited = true ∧
  P.mRNADecayInitiated = true ∧
  P.smgComplexActivated = true

theorem nmd_canonical_pathway_closed_from_evidence
    (P : NMDCanonicalPathwayPackage) (E : NMDCanonicalPathwayEvidence P) :
    NMDCanonicalPathwayClosed P := by
  refine And.intro E.prematureTerminationCodonRecognizedClosed (And.intro E.eRF1eRF3ComplexRecruitedClosed
    (And.intro E.UPF1UPF2UPF3ComplexAssembledClosed (And.intro E.eIF3DisplacedClosed
      (And.intro E.decayComplexRecruitedClosed (And.intro E.mRNADecayInitiatedClosed E.smgComplexActivatedClosed)))))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse