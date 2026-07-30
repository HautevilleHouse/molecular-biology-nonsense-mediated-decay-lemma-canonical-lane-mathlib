import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure NMDAdmittedObject where
  cell : Type
  cytoplasm : TopologicalSpace cell
  mrnaStrand : Prop
  ribosomeBound : Prop
  prematureStopCodon : Prop
  surveillanceComplexPresent : Prop
  transcriptDegraded : Prop
  conclusion : transcriptDegraded

def NMDWitnessClosed (O : NMDAdmittedObject) : Prop :=
  O.transcriptDegraded

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse