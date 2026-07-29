import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure FourierTransformCategoricalPackage where
  abelianGroup : Type u
  dualGroup : Type v
  pontryaginDuality : Prop
  fourierTransformDefined : Prop
  inversionFormula : Prop
  plancherelTheorem : Prop

structure FourierTransformCategoricalEvidence (F : FourierTransformCategoricalPackage) where
  pontryaginDualityClosed : F.pontryaginDuality
  fourierTransformDefinedClosed : F.fourierTransformDefined
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem

def FourierTransformCategoricalClosed (F : FourierTransformCategoricalPackage) : Prop :=
  F.pontryaginDuality ∧ F.fourierTransformDefined ∧ F.inversionFormula ∧ F.plancherelTheorem

theorem fourier_transform_categorical_closed_from_evidence
    (F : FourierTransformCategoricalPackage)
    (E : FourierTransformCategoricalEvidence F) : FourierTransformCategoricalClosed F := by
  exact And.intro E.pontryaginDualityClosed
    (And.intro E.fourierTransformDefinedClosed
      (And.intro E.inversionFormulaClosed E.plancherelTheoremClosed))

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse