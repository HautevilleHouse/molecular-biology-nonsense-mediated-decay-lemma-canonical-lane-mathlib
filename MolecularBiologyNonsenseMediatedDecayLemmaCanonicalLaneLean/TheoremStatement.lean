import HautevilleHouse.MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  nmdConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "molecular-biology-nonsense-mediated-decay-lemma",
  theoremName := "Nonsense Mediated Decay Lemma",
  theoremObject := "NMDAdmittedObject",
  classicalBoundary := "unrestricted classical boundary remains carried",
  nmdConstrainedStatement := "NMD-constrained theorem certificate internalized",
  certificateLane := "nmd_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "molecular-biology-nonsense-mediated-decay-lemma" := by
  rfl

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse