import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure ExponentialFamilyPackage where
  sampleSpace : Type u
  naturalParameter : Type v
  sufficientStatistic : sampleSpace -> Type w
  logNormalizer : Type x
  canonicalForm : Prop
  minimalRepresentation : Prop
  regularCondition : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  canonicalFormClosed : E.canonicalForm
  minimalRepresentationClosed : E.minimalRepresentation
  regularConditionClosed : E.regularCondition

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.canonicalForm ∧ E.minimalRepresentation ∧ E.regularCondition

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage) (Ev : ExponentialFamilyEvidence E) :
    ExponentialFamilyClosed E := by
  exact And.intro Ev.canonicalFormClosed
    (And.intro Ev.minimalRepresentationClosed Ev.regularConditionClosed)

end GraphicalMethodsStatisticsCanonicalLaneLean
end HautevilleHouse
