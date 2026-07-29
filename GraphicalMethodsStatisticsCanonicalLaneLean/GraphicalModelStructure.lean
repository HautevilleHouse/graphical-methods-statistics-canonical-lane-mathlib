import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure UndirectedGraphicalModel where
  vertexSet : Type u
  edgeSet : Set (vertexSet × vertexSet)
  pairwiseMarkovProperty : Prop
  localMarkovProperty : Prop
  globalMarkovProperty : Prop
  decomposability : Prop
  triangulatedGraph : Prop

def UndirectedGraphicalModelEvidence (G : UndirectedGraphicalModel) where
  pairwiseMarkovClosed : G.pairwiseMarkovProperty
  localMarkovClosed : G.localMarkovProperty
  globalMarkovClosed : G.globalMarkovProperty
  decomposabilityClosed : G.decomposability
  triangulatedClosed : G.triangulatedGraph

def UndirectedGraphicalModelClosed (G : UndirectedGraphicalModel) : Prop :=
  G.pairwiseMarkovProperty ∧ G.localMarkovProperty ∧ G.globalMarkovProperty ∧
  G.decomposability ∧ G.triangulatedGraph

theorem undirected_graphical_model_closed (G : UndirectedGraphicalModel) (E : UndirectedGraphicalModelEvidence G) :
    UndirectedGraphicalModelClosed G := by
  exact And.intro E.pairwiseMarkovClosed (And.intro E.localMarkovClosed (And.intro E.globalMarkovClosed (And.intro E.decomposabilityClosed E.triangulatedClosed)))

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse