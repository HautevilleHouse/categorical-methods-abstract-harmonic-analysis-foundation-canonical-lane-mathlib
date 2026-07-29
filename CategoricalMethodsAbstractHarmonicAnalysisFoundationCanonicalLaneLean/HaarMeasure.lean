import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure HaarMeasurePackage (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] where
  haarMeasure : Set G → ℝ≥0∞
  leftInvariant : ∀ (g : G) (s : Set G), haarMeasure (g • s) = haarMeasure s
  regularity : Prop
  uniqueness : Prop

structure HaarMeasureEvidence {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G]
    (H : HaarMeasurePackage G) where
  leftInvariantClosed : ∀ (g : G) (s : Set G), H.haarMeasure (g • s) = H.haarMeasure s
  regularityClosed : H.regularity
  uniquenessClosed : H.uniqueness

def HaarMeasureClosed {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G]
    (H : HaarMeasurePackage G) : Prop :=
  (∀ (g : G) (s : Set G), H.haarMeasure (g • s) = H.haarMeasure s) ∧ H.regularity ∧ H.uniqueness

theorem haar_measure_closed_from_evidence
    {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G]
    (H : HaarMeasurePackage G) (E : HaarMeasureEvidence H) : HaarMeasureClosed H := by
  exact And.intro E.leftInvariantClosed (And.intro E.regularityClosed E.uniquenessClosed)

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse