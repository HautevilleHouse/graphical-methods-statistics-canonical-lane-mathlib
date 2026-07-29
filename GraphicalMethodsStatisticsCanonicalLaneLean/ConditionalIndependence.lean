import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure ConditionalIndependenceStructure where
  randomVariables : List Type
  sigmaAlgebras : List (Set (Set (Sigma (λ T : Type => T))))
  independenceRelation : Prop
  graphSeparationCriterion : Prop
  faithfulness : Prop
  dSeparation : List Type -> List Type -> List Type -> Prop

def ConditionalIndependenceEvidence (C : ConditionalIndependenceStructure) where
  independenceRelationClosed : C.independenceRelation
  graphSeparationCriterionClosed : C.graphSeparationCriterion
  faithfulnessClosed : C.faithfulness
  dSeparationClosed : C.dSeparation

def ConditionalIndependenceClosed (C : ConditionalIndependenceStructure) : Prop :=
  C.independenceRelation ∧ C.graphSeparationCriterion ∧ C.faithfulness

theorem conditional_independence_closed (C : ConditionalIndependenceStructure) (E : ConditionalIndependenceEvidence C) :
    ConditionalIndependenceClosed C := by
  exact And.intro E.independenceRelationClosed (And.intro E.graphSeparationCriterionClosed E.faithfulnessClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse