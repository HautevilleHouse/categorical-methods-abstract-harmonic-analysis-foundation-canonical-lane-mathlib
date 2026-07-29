import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.CategoricalFramework

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure AbstractHarmonicStructure {C : CategoricalFrameworkPackage}
    (cat : CategoricalFrameworkClosed C) where
  groupObject : C.objectClass
  characterObject : C.objectClass
  haarMeasure : Prop
  pontryaginDuality : Prop
  plancherelFormula : Prop
  convolutionProduct : Prop
  representationTheory : Prop
  groupObjectWellDefined : cat.identityMorphismsExist
  characterObjectWellDefined : cat.functorialStructure

structure AbstractHarmonicEvidence {C : CategoricalFrameworkPackage}
    {cat : CategoricalFrameworkClosed C} (H : AbstractHarmonicStructure cat) where
  haarMeasureClosed : H.haarMeasure
  pontryaginDualityClosed : H.pontryaginDuality
  plancherelFormulaClosed : H.plancherelFormula
  convolutionProductClosed : H.convolutionProduct
  representationTheoryClosed : H.representationTheory

def AbstractHarmonicStructuresClosed {C : CategoricalFrameworkPackage}
    {cat : CategoricalFrameworkClosed C} (H : AbstractHarmonicStructure cat) : Prop :=
  H.haarMeasure ∧ H.pontryaginDuality ∧
  H.plancherelFormula ∧ H.convolutionProduct ∧ H.representationTheory

theorem abstract_harmonic_structures_closed_from_evidence
    {C : CategoricalFrameworkPackage} {cat : CategoricalFrameworkClosed C}
    (H : AbstractHarmonicStructure cat) (E : AbstractHarmonicEvidence H) :
    AbstractHarmonicStructuresClosed H := by
  exact And.intro E.haarMeasureClosed
    (And.intro E.pontryaginDualityClosed
      (And.intro E.plancherelFormulaClosed
        (And.intro E.convolutionProductClosed E.representationTheoryClosed)))

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse