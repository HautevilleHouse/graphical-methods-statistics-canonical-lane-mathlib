import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure LikelihoodRatioTestPackage where
  nullModel : Type u
  alternativeModel : Type v
  likelihoodRatioStatistic : Type w
  asymptoticDistribution : Prop
  rejectionRegion : Prop
  testPowerFunction : Prop

structure LikelihoodRatioTestEvidence (L : LikelihoodRatioTestPackage) where
  asymptoticDistributionClosed : L.asymptoticDistribution
  rejectionRegionClosed : L.rejectionRegion
  testPowerFunctionClosed : L.testPowerFunction

def LikelihoodRatioTestClosed (L : LikelihoodRatioTestPackage) : Prop :=
  L.asymptoticDistribution ∧ L.rejectionRegion ∧ L.testPowerFunction

theorem likelihood_ratio_test_closed_from_evidence (L : LikelihoodRatioTestPackage) (E : LikelihoodRatioTestEvidence L) :
    LikelihoodRatioTestClosed L := by
  exact And.intro E.asymptoticDistributionClosed
    (And.intro E.rejectionRegionClosed E.testPowerFunctionClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
