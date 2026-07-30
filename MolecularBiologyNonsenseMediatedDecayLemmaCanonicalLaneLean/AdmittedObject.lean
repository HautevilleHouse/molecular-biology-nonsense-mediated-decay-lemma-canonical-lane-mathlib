import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NMDSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NMDAdmittedObject where
  space : NMDSpace
  threePrimeUTRPresent : Prop
  prematureStopCodon : Prop
  spliceJunctionDownstream : Prop
  conclusion : spliceJunctionDownstream

structure NMDEndgameState where
  object : NMDAdmittedObject

def NMDWitnessClosed (O : NMDAdmittedObject) : Prop :=
  O.spliceJunctionDownstream

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse