import HautevilleHouse.GraphicalMethodsStatisticsCanonicalLaneLean.GraphicalModelAdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

def bridgeClosed (A : GraphicalAdmissibleClass) : Prop :=
  A.object.exponentialFamilyCondition ∧ A.object.neymanPearsonOptimality ∧ A.object.mleConsistency

theorem bridge_from_admissible_class (A : GraphicalAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
