import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundation

structure LocallyCompactGroup (G : Type u) [TopologicalSpace G] where
  groupStructure : Group G
  topologicalGroupAxioms : TopologicalGroup G
  locallyCompact : LocallyCompactSpace G

structure HaarMeasure (G : Type u) [TopologicalSpace G] (hG : LocallyCompactGroup G) where
  carrier : Set G
  mu : MeasureTheory.Measure G
  innerRegular : MeasureTheory.InnerRegular mu
  translationInvariant : ∀ (g : G) (s : Set G), mu (hG.groupStructure.mul g '' s) = mu s

end CategoricalMethodsAbstractHarmonicAnalysisFoundation
end HautevilleHouse