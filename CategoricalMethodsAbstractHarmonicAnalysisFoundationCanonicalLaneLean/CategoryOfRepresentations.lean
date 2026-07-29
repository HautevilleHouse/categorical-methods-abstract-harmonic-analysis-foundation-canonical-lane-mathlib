import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.FourierTransform

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure CategoryOfRepresentationsPackage {C : CategoricalFrameworkPackage}
    {cat : CategoricalFrameworkClosed C}
    {H : AbstractHarmonicStructure cat}
    {D : DualityTheoremPackage H}
    (F : FourierTransformPackage D) where
  representationObjects : Prop
  intertwiningMorphisms : Prop
  tensorProductDefined : Prop
  inductionFunctors : Prop
  schursLemma : Prop
  carriedObject : C.objectClass

dualGroupConstructed : Prop := F.carriedObject = H.characterObject

def CategoryOfRepresentationsClosed {C : CategoricalFrameworkPackage}
    {cat : CategoricalFrameworkClosed C}
    {H : AbstractHarmonicStructure cat}
    {D : DualityTheoremPackage H}
    {F : FourierTransformPackage D} (R : CategoryOfRepresentationsPackage F) : Prop :=
  R.representationObjects ∧ R.intertwiningMorphisms ∧
  R.tensorProductDefined ∧ R.inductionFunctors ∧ R.schursLemma

theorem category_of_representations_closed_from_evidence
    {C : CategoricalFrameworkPackage} {cat : CategoricalFrameworkClosed C}
    {H : AbstractHarmonicStructure cat} {D : DualityTheoremPackage H}
    {F : FourierTransformPackage D} (R : CategoryOfRepresentationsPackage F)
    (E : R.representationObjects ∧ R.intertwiningMorphisms ∧ R.tensorProductDefined ∧ R.inductionFunctors ∧ R.schursLemma) :
    CategoryOfRepresentationsClosed R := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 (And.intro E.2.2.2.1 E.2.2.2.2)))

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse