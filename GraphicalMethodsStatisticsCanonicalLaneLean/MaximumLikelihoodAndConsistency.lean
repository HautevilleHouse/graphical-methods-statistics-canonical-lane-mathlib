import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicalMethodsStatisticsCanonicalLaneLean

structure MaximumLikelihoodPackage (S : SufficiencyPackage CanonicalGraphicalModelPackage) where
  likelihoodFunction : Type u
  mleExistence : Prop
  mleUniqueness : Prop
  consistencyProperty : Prop
  asymptoticNormality : Prop

structure MaximumLikelihoodEvidence {S : SufficiencyPackage CanonicalGraphicalModelPackage}
    (M : MaximumLikelihoodPackage S) where
  mleExistenceClosed : M.mleExistence
  mleUniquenessClosed : M.mleUniqueness
  consistencyPropertyClosed : M.consistencyProperty
  asymptoticNormalityClosed : M.asymptoticNormality

def MaximumLikelihoodClosed {S : SufficiencyPackage CanonicalGraphicalModelPackage}
    (M : MaximumLikelihoodPackage S) : Prop :=
  M.mleExistence ∧ M.mleUniqueness ∧ M.consistencyProperty ∧ M.asymptoticNormality

theorem maximum_likelihood_closed_from_evidence {S : SufficiencyPackage CanonicalGraphicalModelPackage}
    (M : MaximumLikelihoodPackage S) (E : MaximumLikelihoodEvidence M) :
    MaximumLikelihoodClosed M := by
  exact And.intro E.mleExistenceClosed
    (And.intro E.mleUniquenessClosed
      (And.intro E.consistencyPropertyClosed E.asymptoticNormalityClosed))

end HautevilleHouse
end HautevilleHouse