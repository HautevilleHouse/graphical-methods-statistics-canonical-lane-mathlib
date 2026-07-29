import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalMethodsStatisticsCanonicalLaneLean.SufficiencyAndExponentialFamilies

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure MLEAsymptoticPackage {S : SufficiencyFamilyPackage} where
  logLikelihoodFunction : Type u
  scoreEquation : Type v
  fisherInformation : Type w
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop

structure MLEAsymptoticEvidence {S : SufficiencyFamilyPackage} (M : MLEAsymptoticPackage S) where
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency

def MLEAsymptoticClosed {S : SufficiencyFamilyPackage} (M : MLEAsymptoticPackage S) : Prop :=
  M.consistency ∧ M.asymptoticNormality ∧ M.efficiency

theorem mle_asymptotic_closed_from_evidence {S : SufficiencyFamilyPackage} (M : MLEAsymptoticPackage S) (E : MLEAsymptoticEvidence M) :
    MLEAsymptoticClosed M := by
  exact And.intro E.consistencyClosed (And.intro E.asymptoticNormalityClosed E.efficiencyClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
