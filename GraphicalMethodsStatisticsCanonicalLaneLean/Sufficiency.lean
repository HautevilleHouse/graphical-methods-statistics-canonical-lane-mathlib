import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure Sufficiency (A : AdmissibleClass) where
  sampleSpace : Type u
  statistic : sampleSpace → Type v
  parameterSpace : Type w
  likelihood : sampleSpace → parameterSpace → ℝ
  factorizationTheorem : Prop
  minimalSufficiency : Prop
  completeness : Prop
  factorizationTheoremClosed : factorizationTheorem
  minimalSufficiencyClosed : minimalSufficiency
  completenessClosed : completeness

structure SufficiencyEvidence {A : AdmissibleClass} (S : Sufficiency A) where
  factorizationTheoremClosedClosed : S.factorizationTheorem
  minimalSufficiencyClosedClosed : S.minimalSufficiency
  completenessClosedClosed : S.completeness

def SufficiencyClosed {A : AdmissibleClass} (S : Sufficiency A) : Prop :=
  S.factorizationTheorem ∧ S.minimalSufficiency ∧ S.completeness

theorem sufficiency_closed_from_evidence
    {A : AdmissibleClass} (S : Sufficiency A) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.factorizationTheoremClosedClosed
    (And.intro E.minimalSufficiencyClosedClosed E.completenessClosedClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
