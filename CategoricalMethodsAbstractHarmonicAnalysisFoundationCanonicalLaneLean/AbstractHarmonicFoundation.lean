import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.CategoryOfLocallyCompactGroups
import HautevilleHouse.CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.DualGroupFunctor
import HautevilleHouse.CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.FourierTransform
import HautevilleHouse.CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.PlancherelTheorem
import HautevilleHouse.CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.PeterWeylTheorem

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure AbstractHarmonicFoundation where
  category : CategoryOfLocallyCompactGroups
  dualFunctor : DualGroupFunctor
  fourierTransform : FourierTransform
  plancherel : PlancherelPackage
  peterWeyl : PeterWeylPackage
  compatibilityConditions : Prop

structure FoundationEvidence (F : AbstractHarmonicFoundation) where
  categoryClosed : CategoryClosed F.category
  dualClosed : DualClosed F.dualFunctor
  fourierClosed : FourierClosed F.fourierTransform
  plancherelClosed : PlancherelClosed F.plancherel
  peterWeylClosed : PeterWeylClosed F.peterWeyl
  compatibilityClosed : F.compatibilityConditions

def FoundationClosed (F : AbstractHarmonicFoundation) : Prop :=
  CategoryClosed F.category ∧ DualClosed F.dualFunctor ∧ FourierClosed F.fourierTransform ∧
  PlancherelClosed F.plancherel ∧ PeterWeylClosed F.peterWeyl ∧ F.compatibilityConditions

theorem foundation_closed_from_evidence (F : AbstractHarmonicFoundation) (E : FoundationEvidence F) : FoundationClosed F := by
  exact And.intro E.categoryClosed
    (And.intro E.dualClosed
      (And.intro E.fourierClosed
        (And.intro E.plancherelClosed
          (And.intro E.peterWeylClosed E.compatibilityClosed))))

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse