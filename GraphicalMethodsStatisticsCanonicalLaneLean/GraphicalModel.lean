import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure GraphicalModelPackage where
  vertices : Type u
  edges : Type v
  potentialFunctions : Type w
  factorizationProperty : Prop
  conditionalIndependence : Prop
  decompositionProperty : Prop

structure GraphicalModelEvidence (G : GraphicalModelPackage) where
  factorizationPropertyClosed : G.factorizationProperty
  conditionalIndependenceClosed : G.conditionalIndependence
  decompositionPropertyClosed : G.decompositionProperty

def GraphicalModelClosed (G : GraphicalModelPackage) : Prop :=
  G.factorizationProperty ∧ G.conditionalIndependence ∧ G.decompositionProperty

theorem graphical_model_closed_from_evidence (G : GraphicalModelPackage) (E : GraphicalModelEvidence G) :
    GraphicalModelClosed G := by
  exact And.intro E.factorizationPropertyClosed
    (And.intro E.conditionalIndependenceClosed E.decompositionPropertyClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
