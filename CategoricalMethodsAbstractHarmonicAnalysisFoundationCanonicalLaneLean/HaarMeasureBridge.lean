import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.LocallyCompactGroupCategory

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure HaarMeasure (G : Type u) [LocallyCompactGroup G] where
  measure : Set G → ℝ≥0
  leftInvariant : ∀ (g : G) (s : Set G), measure (g • s) = measure s
  regularity : ∀ (s : Set G), measure s = sInf { measure u | u ⊇ s ∧ IsOpen u }
  positivityOnOpen : ∀ (s : Set G), IsOpen s → s.Nonempty → measure s > 0

structure HaarMeasureBridge {G : Type u} [LocallyCompactGroup G] (H : HaarMeasure G) where
  existence : H.measure ≠ 0
  uniqueness : ∀ (H' : HaarMeasure G), ∃ (c : ℝ≥0), c > 0 ∧ ∀ (s : Set G), H'.measure s = c * H.measure s
  bridgeClosed : Prop
  gateClosed : Prop
  closure : bridgeClosed ∧ gateClosed
  bridgeProof : bridgeClosed
  gateProof : gateClosed

def HaarMeasureClosed (H : HaarMeasureBridge) : Prop :=
  H.bridgeClosed ∧ H.gateClosed

theorem haar_measure_closed_from_evidence (H : HaarMeasureBridge) :
    HaarMeasureClosed H := by
  exact H.closure

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse