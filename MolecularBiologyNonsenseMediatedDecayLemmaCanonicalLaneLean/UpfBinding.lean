import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean.NMDAdmittedObject

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure UpfBindingPackage (A : AdmissibleClass) where
  upf1Recruited : Prop
  upf2Recruited : Prop
  upf3Recruited : Prop
  complexFormation : Prop
  exonJunctionComplex : Prop

def UpfBindingClosed (U : UpfBindingPackage A) : Prop :=
  U.upf1Recruited ∧ U.upf2Recruited ∧ U.upf3Recruited ∧ U.complexFormation ∧ U.exonJunctionComplex

structure UpfBindingEvidence (U : UpfBindingPackage A) where
  upf1RecruitedClosed : U.upf1Recruited
  upf2RecruitedClosed : U.upf2Recruited
  upf3RecruitedClosed : U.upf3Recruited
  complexFormationClosed : U.complexFormation
  exonJunctionComplexClosed : U.exonJunctionComplex

theorem upf_binding_closed_from_evidence (U : UpfBindingPackage A) (E : UpfBindingEvidence U) :
    UpfBindingClosed U := by
  exact And.intro E.upf1RecruitedClosed (And.intro E.upf2RecruitedClosed (And.intro E.upf3RecruitedClosed (And.intro E.complexFormationClosed E.exonJunctionComplexClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse