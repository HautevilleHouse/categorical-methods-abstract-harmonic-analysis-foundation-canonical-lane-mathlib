import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure HaarMeasurePackage (G : Type u) [TopologicalSpace G] [Group G] where
  leftInvariant : Prop
  regularOnCompact : Prop
  positivityOnOpen : Prop
  uniquenessUpToScaling : Prop

structure HaarMeasureEvidence {G : Type u} [TopologicalSpace G] [Group G] (H : HaarMeasurePackage G) where
  leftInvariantClosed : H.leftInvariant
  regularOnCompactClosed : H.regularOnCompact
  positivityOnOpenClosed : H.positivityOnOpen
  uniquenessUpToScalingClosed : H.uniquenessUpToScaling

def HaarMeasureClosed {G : Type u} [TopologicalSpace G] [Group G] (H : HaarMeasurePackage G) : Prop :=
  H.leftInvariant ∧ H.regularOnCompact ∧ H.positivityOnOpen ∧ H.uniquenessUpToScaling

theorem haar_measure_closed_from_evidence {G : Type u} [TopologicalSpace G] [Group G]
    (H : HaarMeasurePackage G) (E : HaarMeasureEvidence H) : HaarMeasureClosed H := by
  exact And.intro E.leftInvariantClosed
    (And.intro E.regularOnCompactClosed
      (And.intro E.positivityOnOpenClosed E.uniquenessUpToScalingClosed))

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
