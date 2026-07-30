import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure SpliceosomeAssemblyPackage where
  exonJunctionComplexLoaded : Prop
  upf2Recruited : Prop
  upf1Phosphorylated : Prop
  translationTerminated : Prop
  mrnAUnwinded : Prop

structure SpliceosomeAssemblyEvidence (S : SpliceosomeAssemblyPackage) where
  exonJunctionComplexLoadedClosed : S.exonJunctionComplexLoaded
  upf2RecruitedClosed : S.upf2Recruited
  upf1PhosphorylatedClosed : S.upf1Phosphorylated
  translationTerminatedClosed : S.translationTerminated
  mrnAUnwindedClosed : S.mrnAUnwinded

def SpliceosomeAssemblyClosed (S : SpliceosomeAssemblyPackage) : Prop :=
  S.exonJunctionComplexLoaded ∧ S.upf2Recruited ∧ S.upf1Phosphorylated ∧ S.translationTerminated ∧ S.mrnAUnwinded

theorem spliceosome_assembly_closed_from_evidence (S : SpliceosomeAssemblyPackage) (E : SpliceosomeAssemblyEvidence S) : SpliceosomeAssemblyClosed S := by
  exact And.intro E.exonJunctionComplexLoadedClosed
    (And.intro E.upf2RecruitedClosed
      (And.intro E.upf1PhosphorylatedClosed
        (And.intro E.translationTerminatedClosed E.mrnAUnwindedClosed)))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse