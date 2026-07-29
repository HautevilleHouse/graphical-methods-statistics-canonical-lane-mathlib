import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Statistics.SufficientStatistic

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure SufficiencyExponentialFamily where
  sampleSpace : Type u
  parameterSpace : Type v
  sufficientStatistic : sampleSpace → ℝⁿ
  exponentialForm : Prop
  factorizationTheorem : Prop

structure SufficiencyExponentialEvidence (F : SufficiencyExponentialFamily) where
  exponentialFormClosed : F.exponentialForm
  factorizationTheoremClosed : F.factorizationTheorem

def SufficiencyExponentialFamilyClosed (F : SufficiencyExponentialFamily) : Prop :=
  F.exponentialForm ∧ F.factorizationTheorem

theorem sufficiency_exponential_family_closed_from_evidence
    (F : SufficiencyExponentialFamily) (E : SufficiencyExponentialEvidence F) :
    SufficiencyExponentialFamilyClosed F := by
  exact And.intro E.exponentialFormClosed E.factorizationTheoremClosed

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse