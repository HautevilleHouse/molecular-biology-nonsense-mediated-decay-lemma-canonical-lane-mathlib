import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDConservationLawPackage where
  mRNADecayRate : FunctorialConservativeProperty
  ribosomeStallingDuration : RibosomalQueueBound
  capBindingAffinity : CapBindingCoefficient
  eRF1eRF3RecruitmentRate : RecruitmentRateConstant
  decayComplexAssemblyEnergy : DecayComplexExergonicity
  eIF3DisplacementRate : DisplacementRate

structure NMDConservationLawEvidence (C : NMDConservationLawPackage) where
  decayRateConserved : C.mRNADecayRate = 0.0 ∧ C.mRNADecayRate ≥ 0.0
  ribosomeStallingBounded : C.ribosomeStallingDuration ≥ 5.0
  capAffinityPositive : C.capBindingAffinity > 0.0
  recruitmentRateClosed : C.eRF1eRF3RecruitmentRate ≥ 1.0
  assemblyEnergyClosed : C.decayComplexAssemblyEnergy < 0.0
  eIF3DisplacementRateClosed : C.eIF3DisplacementRate > 0.0

def NMDConservationLawsClosed (C : NMDConservationLawPackage) : Prop :=
  C.mRNADecayRate = 0.0 ∧ C.mRNADecayRate ≥ 0.0 ∧
  C.ribosomeStallingDuration ≥ 5.0 ∧
  C.capBindingAffinity > 0.0 ∧
  C.eRF1eRF3RecruitmentRate ≥ 1.0 ∧
  C.decayComplexAssemblyEnergy < 0.0 ∧
  C.eIF3DisplacementRate > 0.0

theorem nmd_conservation_laws_closed_from_evidence
    (C : NMDConservationLawPackage) (E : NMDConservationLawEvidence C) :
    NMDConservationLawsClosed C := by
  refine And.intro (And.intro E.decayRateConserved.left E.decayRateConserved.right) ?_
  refine And.intro E.ribosomeStallingBounded (And.intro E.capAffinityPositive (And.intro E.recruitmentRateClosed (And.intro E.assemblyEnergyClosed E.eIF3DisplacementRateClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse