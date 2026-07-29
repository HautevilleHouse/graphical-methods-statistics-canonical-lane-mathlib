import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure SufficiencyPackage (G : CanonicalGraphicalModelPackage) where
  sufficientStatistic : Type w
  factorizationTheorem : Prop
  exponentialFamilyForm : Prop
  canonicalParameterization : Prop

structure SufficiencyEvidence {G : CanonicalGraphicalModelPackage} (S : SufficiencyPackage G) where
  factorizationTheoremClosed : S.factorizationTheorem
  exponentialFamilyFormClosed : S.exponentialFamilyForm
  canonicalParameterizationClosed : S.canonicalParameterization

def SufficiencyClosed {G : CanonicalGraphicalModelPackage} (S : SufficiencyPackage G) : Prop :=
  S.factorizationTheorem ∧ S.exponentialFamilyForm ∧ S.canonicalParameterization

theorem sufficiency_closed_from_evidence {G : CanonicalGraphicalModelPackage} (S : SufficiencyPackage G)
    (E : SufficiencyEvidence S) : SufficiencyClosed S := by
  exact And.intro E.factorizationTheoremClosed
    (And.intro E.exponentialFamilyFormClosed E.canonicalParameterizationClosed)

end HautevilleHouse
end HautevilleHouse