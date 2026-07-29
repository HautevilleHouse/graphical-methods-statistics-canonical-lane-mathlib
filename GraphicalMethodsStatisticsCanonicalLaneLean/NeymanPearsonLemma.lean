import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Statistics.HypothesisTesting

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure NeymanPearsonLemma where
  nullHypothesis : Type u
  alternativeHypothesis : Type v
  likelihoodRatio : Type w
  mostPowerfulTestExists : Prop
  thresholdDetermined : Prop

structure NeymanPearsonEvidence (L : NeymanPearsonLemma) where
  mostPowerfulTestExistsClosed : L.mostPowerfulTestExists
  thresholdDeterminedClosed : L.thresholdDetermined

def NeymanPearsonLemmaClosed (L : NeymanPearsonLemma) : Prop :=
  L.mostPowerfulTestExists ∧ L.thresholdDetermined

theorem neyman_pearson_lemma_closed_from_evidence
    (L : NeymanPearsonLemma) (E : NeymanPearsonEvidence L) :
    NeymanPearsonLemmaClosed L := by
  exact And.intro E.mostPowerfulTestExistsClosed E.thresholdDeterminedClosed

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse