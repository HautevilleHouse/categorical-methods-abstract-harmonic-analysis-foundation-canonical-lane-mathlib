import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure UnitaryRepresentation (G : LocallyCompactGroup) (H : Type v) [NormedAddCommGroup H] [InnerProductSpace ℂ H] where
  representation : G → (H →ₗ[ℂ] H)
  unitary : ∀ g : G, IsUnitary (representation g)
  continuity : Continuous (fun (g : G) (h : H) => representation g h)

def UnitaryRepresentationClosed (ρ : UnitaryRepresentation G H) : Prop :=
  ρ.unitary ∧ ρ.continuity

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
