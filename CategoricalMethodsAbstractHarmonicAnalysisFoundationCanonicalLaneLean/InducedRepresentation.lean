import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure InducedRepresentationPackage where
  ambientGroup : Type u
  subgroup : Type v
  subgroupInclusion : subgroup → ambientGroup
  representationOfSubgroup : Type w
  inducedRepresentation : Type z
  inductionFunctorDefined : Prop
  frobeniusReciprocity : Prop

structure InducedRepresentationEvidence (I : InducedRepresentationPackage) where
  inductionFunctorDefinedClosed : I.inductionFunctorDefined
  frobeniusReciprocityClosed : I.frobeniusReciprocity

def InducedRepresentationClosed (I : InducedRepresentationPackage) : Prop :=
  I.inductionFunctorDefined ∧ I.frobeniusReciprocity

theorem induced_representation_closed_from_evidence
    (I : InducedRepresentationPackage)
    (E : InducedRepresentationEvidence I) : InducedRepresentationClosed I := by
  exact And.intro E.inductionFunctorDefinedClosed E.frobeniusReciprocityClosed

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse