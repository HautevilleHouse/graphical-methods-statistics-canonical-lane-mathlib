import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure MLEPackage where
  sampleSpace : Type u
  parameterSpace : Type v
  logLikelihood : sampleSpace -> Type w
  mleEstimator : sampleSpace -> Type x
  consistencyProperty : Prop
  asymptoticNormality : Prop
  efficiencyProperty : Prop

structure MLEEvidence (M : MLEPackage) where
  consistencyPropertyClosed : M.consistencyProperty
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyPropertyClosed : M.efficiencyProperty

def MLEClosed (M : MLEPackage) : Prop :=
  M.consistencyProperty ∧ M.asymptoticNormality ∧ M.efficiencyProperty

theorem mle_closed_from_evidence (M : MLEPackage) (E : MLEEvidence M) : MLEClosed M := by
  exact And.intro E.consistencyPropertyClosed
    (And.intro E.asymptoticNormalityClosed E.efficiencyPropertyClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
