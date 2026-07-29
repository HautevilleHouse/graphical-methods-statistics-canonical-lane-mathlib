import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure CanonicalGraphicalModelPackage where
  vertexSet : Type u
  edgeSet : Type v
  incidenceRelation : vertexSet -> edgeSet -> Prop
  acyclicCondition : Prop
  directedCondition : Prop
  graphIsDAG : acyclicCondition ∧ directedCondition

structure CanonicalGraphicalModelEvidence (G : CanonicalGraphicalModelPackage) where
  acyclicConditionClosed : G.acyclicCondition
  directedConditionClosed : G.directedCondition
  graphIsDAGClosed : G.graphIsDAG

def CanonicalGraphicalModelClosed (G : CanonicalGraphicalModelPackage) : Prop :=
  G.acyclicCondition ∧ G.directedCondition

theorem canonical_graphical_model_closed_from_evidence (G : CanonicalGraphicalModelPackage)
    (E : CanonicalGraphicalModelEvidence G) : CanonicalGraphicalModelClosed G := by
  exact And.intro E.acyclicConditionClosed E.directedConditionClosed

end HautevilleHouse
end HautevilleHouse