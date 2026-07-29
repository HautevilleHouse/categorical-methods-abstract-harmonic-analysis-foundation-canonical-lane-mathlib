import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure FourierTransformOnGroupPackage (G : Type u) [TopologicalSpace G] [CommGroup G] [LocallyCompactAbelian G] where
  dualGroup : Type v
  fourierTransform : (G → ℂ) → (dualGroup → ℂ)
  inversionFormula : Prop
  plancherelTheorem : Prop

structure FourierTransformOnGroupEvidence {G : Type u} [TopologicalSpace G] [CommGroup G] [LocallyCompactAbelian G]
    (F : FourierTransformOnGroupPackage G) where
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem

def FourierTransformOnGroupClosed {G : Type u} [TopologicalSpace G] [CommGroup G] [LocallyCompactAbelian G]
    (F : FourierTransformOnGroupPackage G) : Prop :=
  F.inversionFormula ∧ F.plancherelTheorem

theorem fourier_transform_on_group_closed_from_evidence {G : Type u} [TopologicalSpace G] [CommGroup G] [LocallyCompactAbelian G]
    (F : FourierTransformOnGroupPackage G) (E : FourierTransformOnGroupEvidence F) : FourierTransformOnGroupClosed F := by
  exact And.intro E.inversionFormulaClosed E.plancherelTheoremClosed

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
