import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure NeymanPearsonPackage where
  hypothesisTest : Type u
  neymanPearsonLemma : Prop
  uniformlyMostPowerful : Prop
  likelihoodRatioTest : Prop

structure NeymanPearsonEvidence (N : NeymanPearsonPackage) where
  neymanPearsonLemmaClosed : N.neymanPearsonLemma
  uniformlyMostPowerfulClosed : N.uniformlyMostPowerful
  likelihoodRatioTestClosed : N.likelihoodRatioTest

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.neymanPearsonLemma ∧ N.uniformlyMostPowerful ∧ N.likelihoodRatioTest

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonPackage)
    (E : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro E.neymanPearsonLemmaClosed
    (And.intro E.uniformlyMostPowerfulClosed E.likelihoodRatioTestClosed)

end HautevilleHouse
end HautevilleHouse