import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure SufficiencyPackage where
  sampleSpace : Type u
  parameterSpace : Type v
  statistic : sampleSpace -> Type w
  sufficientStatisticProperty : Prop
  factorizationCondition : Prop
  completeSufficiency : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  sufficientStatisticPropertyClosed : S.sufficientStatisticProperty
  factorizationConditionClosed : S.factorizationCondition
  completeSufficiencyClosed : S.completeSufficiency

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.sufficientStatisticProperty ∧ S.factorizationCondition ∧ S.completeSufficiency

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.sufficientStatisticPropertyClosed
    (And.intro E.factorizationConditionClosed E.completeSufficiencyClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
