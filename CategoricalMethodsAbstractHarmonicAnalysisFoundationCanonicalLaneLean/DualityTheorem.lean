import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.AbstractHarmonicStructure

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure DualityTheoremPackage {C : CategoricalFrameworkPackage}
    {cat : CategoricalFrameworkClosed C}
    (H : AbstractHarmonicStructure cat) where
  dualityPairing : Prop
  dualGroupConstructed : Prop
  isomorphismStatement : Prop
  compactnessConditions : Prop
  fixedPointProperty : Prop

def DualityTheoremClosed {C : CategoricalFrameworkPackage}
    {cat : CategoricalFrameworkClosed C}
    {H : AbstractHarmonicStructure cat} (D : DualityTheoremPackage H) : Prop :=
  D.dualityPairing ∧ D.dualGroupConstructed ∧
  D.isomorphismStatement ∧ D.compactnessConditions ∧ D.fixedPointProperty

theorem duality_theorem_closed_from_evidence
    {C : CategoricalFrameworkPackage} {cat : CategoricalFrameworkClosed C}
    {H : AbstractHarmonicStructure cat} (D : DualityTheoremPackage H)
    (E : D.dualityPairing ∧ D.dualGroupConstructed ∧ D.isomorphismStatement ∧ D.compactnessConditions ∧ D.fixedPointProperty) :
    DualityTheoremClosed D := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 (And.intro E.2.2.2.1 E.2.2.2.2)))

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse