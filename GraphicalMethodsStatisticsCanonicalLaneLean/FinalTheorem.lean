import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicalMethodsStatisticsCanonicalLaneLean.ConditionalIndependenceGraphs
import HautevilleHouse.GraphicalMethodsStatisticsCanonicalLaneLean.SufficiencyExponentialFamily
import HautevilleHouse.GraphicalMethodsStatisticsCanonicalLaneLean.NeymanPearsonLemma

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

def ConstrainedGraphicalMethodsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphical_methods_endgame (A : AdmissibleClass) :
    ConstrainedGraphicalMethodsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse