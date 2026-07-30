import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean

structure EJCRemodelingPackage where
  exonJunctionComplex : Type u
  upf3bRecruited : Prop
  mrnaBound : Prop
  remodelingComplete : Prop
  downstreamFactorsRecruited : Prop

structure EJCRemodelingEvidence (E : EJCRemodelingPackage) where
  upf3bRecruitedClosed : E.upf3bRecruited
  mrnaBoundClosed : E.mrnaBound
  remodelingCompleteClosed : E.remodelingComplete
  downstreamFactorsRecruitedClosed : E.downstreamFactorsRecruited

def EJCRemodelingClosed (E : EJCRemodelingPackage) : Prop :=
  E.upf3bRecruited ∧ E.mrnaBound ∧ E.remodelingComplete ∧ E.downstreamFactorsRecruited

theorem ejc_remodeling_closed_from_evidence (E : EJCRemodelingPackage)
    (Ev : EJCRemodelingEvidence E) : EJCRemodelingClosed E := by
  exact And.intro Ev.upf3bRecruitedClosed
    (And.intro Ev.mrnaBoundClosed
      (And.intro Ev.remodelingCompleteClosed Ev.downstreamFactorsRecruitedClosed))

end MolecularBiologyNonsenseMediatedDecayLemmaCanonicalLaneLean
end HautevilleHouse