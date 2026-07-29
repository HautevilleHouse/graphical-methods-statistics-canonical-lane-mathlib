import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalMethodsStatisticsCanonicalLaneLean.GraphicalModelAdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure SufficiencyFamilyPackage where
  sufficientStatistic : Type u
  conditionalDistribution : Type v
  factorizationTheorem : Prop
  exponentialFamilyForm : Prop
  canonicalParameterSpace : Prop

structure SufficiencyFamilyEvidence (S : SufficiencyFamilyPackage) where
  factorizationTheoremClosed : S.factorizationTheorem
  exponentialFamilyFormClosed : S.exponentialFamilyForm
  canonicalParameterSpaceClosed : S.canonicalParameterSpace

def SufficiencyFamilyClosed (S : SufficiencyFamilyPackage) : Prop :=
  S.factorizationTheorem ∧ S.exponentialFamilyForm ∧ S.canonicalParameterSpace

theorem sufficiency_family_closed_from_evidence (S : SufficiencyFamilyPackage) (E : SufficiencyFamilyEvidence S) :
    SufficiencyFamilyClosed S := by
  exact And.intro E.factorizationTheoremClosed (And.intro E.exponentialFamilyFormClosed E.canonicalParameterSpaceClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
