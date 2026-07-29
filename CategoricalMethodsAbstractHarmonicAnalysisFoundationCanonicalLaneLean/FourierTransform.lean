import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.UnitaryRepresentation

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure FourierTransform (G : LocallyCompactGroup) (H : Type v) [NormedAddCommGroup H] [InnerProductSpace ℂ H] where
  representation : UnitaryRepresentation G H
  haarmeasure : HaarMeasure G
  transform : (G → ℂ) → (G → ℂ)
  inversion : (G → ℂ) → (G → ℂ)
  isometry : ∀ f : G → ℂ, ‖transform f‖_L2 = ‖f‖_L2
  inversion_inverse : ∀ f : G → ℂ, inversion (transform f) = f

def FourierTransformClosed (F : FourierTransform G H) : Prop :=
  F.isometry ∧ F.inversion_inverse

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
