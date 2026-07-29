import HautevilleHouse.GraphicalMethodsStatisticsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

def gateClosed (A : GraphicalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GraphicalAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
