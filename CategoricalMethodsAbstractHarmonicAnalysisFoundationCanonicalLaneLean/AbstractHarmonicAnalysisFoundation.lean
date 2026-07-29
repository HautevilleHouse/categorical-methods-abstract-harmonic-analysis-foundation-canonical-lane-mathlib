import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.HaarMeasure
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.PontryaginDuality
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.FellTopology
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.InducedRepresentation

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure AbstractHarmonicAnalysisFoundationPackage where
  haar : HaarMeasurePackage ℂ
  pontryagin : PontryaginDualityPackage ℂ
  fell : FellTopologyPackage ℂ
  inducedRep : InducedRepresentationPackage ℂ (Subgroup.instTopologicalSubgroup ℂ)
  coherence : Prop

structure AbstractHarmonicAnalysisFoundationEvidence
    (F : AbstractHarmonicAnalysisFoundationPackage) where
  haarClosed : HaarMeasureClosed F.haar
  pontryaginClosed : PontryaginDualityClosed F.pontryagin
  fellClosed : FellTopologyClosed F.fell
  inducedRepClosed : InducedRepresentationClosed F.inducedRep
  coherenceClosed : F.coherence

def AbstractHarmonicAnalysisFoundationClosed
    (F : AbstractHarmonicAnalysisFoundationPackage) : Prop :=
  HaarMeasureClosed F.haar ∧ PontryaginDualityClosed F.pontryagin ∧
  FellTopologyClosed F.fell ∧ InducedRepresentationClosed F.inducedRep ∧ F.coherence

theorem abstract_harmonic_analysis_foundation_closed_from_evidence
    (F : AbstractHarmonicAnalysisFoundationPackage)
    (E : AbstractHarmonicAnalysisFoundationEvidence F) :
    AbstractHarmonicAnalysisFoundationClosed F := by
  exact And.intro E.haarClosed
    (And.intro E.pontryaginClosed
      (And.intro E.fellClosed
        (And.intro E.inducedRepClosed E.coherenceClosed)))

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse