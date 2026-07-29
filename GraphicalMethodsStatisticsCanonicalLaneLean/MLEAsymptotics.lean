import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure MLEPackage where
  parameterSpace : Type u
  logLikelihood : Type v -> Type w
  scoreFunction : Type x
  fisherInformation : Type y
  mleEstimator : Type z
  consistencyCondition : Prop
  asymptoticNormalityCondition : Prop
  regularityConditions : Prop

def MLEEvidence (M : MLEPackage) where
  consistencyClosed : M.consistencyCondition
  asymptoticNormalityClosed : M.asymptoticNormalityCondition
  regularityClosed : M.regularityConditions

def MLEClosed (M : MLEPackage) : Prop :=
  M.consistencyCondition ∧ M.asymptoticNormalityCondition ∪ M.regularityConditions

theorem mle_closed_from_evidence (M : MLEPackage) (E : MLEEvidence M) :
    MLEClosed M := by
  exact And.intro E.consistencyClosed (And.intro E.asymptoticNormalityClosed E.regularityClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse