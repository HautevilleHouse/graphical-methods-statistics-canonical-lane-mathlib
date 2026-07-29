import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure ConditionalIndependenceGraph where
  vertexSet : Type u
  edgeSet : Set (vertexSet × vertexSet)
  undirected : Prop
  noSelfLoops : Prop
  pairwiseMarkovProperty : Prop

structure ConditionalIndependenceEvidence (G : ConditionalIndependenceGraph) where
  undirectedClosed : G.undirected
  noSelfLoopsClosed : G.noSelfLoops
  pairwiseMarkovPropertyClosed : G.pairwiseMarkovProperty

def ConditionalIndependenceGraphClosed (G : ConditionalIndependenceGraph) : Prop :=
  G.undirected ∧ G.noSelfLoops ∧ G.pairwiseMarkovProperty

theorem conditional_independence_graph_closed_from_evidence
    (G : ConditionalIndependenceGraph) (E : ConditionalIndependenceEvidence G) :
    ConditionalIndependenceGraphClosed G := by
  exact And.intro E.undirectedClosed (And.intro E.noSelfLoopsClosed E.pairwiseMarkovPropertyClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse