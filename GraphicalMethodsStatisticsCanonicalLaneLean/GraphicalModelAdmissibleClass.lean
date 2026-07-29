import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure GraphicalAdmittedObject where
  dataSpace : Type u
  probabilityModel : Type v
  graphStructure : Type w
  sufficientStatistic : dataSpace → graphStructure
  exponentialFamilyCondition : Prop
  neymanPearsonOptimality : Prop
  mleConsistency : Prop
  conclusion : exponentialFamilyCondition ∧ neymanPearsonOptimality ∧ mleConsistency

structure GraphicalAdmissibleClass where
  object : GraphicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : GraphicalAdmissibleClass) : Prop :=
  (A.object.exponentialFamilyCondition ∧ A.object.neymanPearsonOptimality ∧ A.object.mleConsistency) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
