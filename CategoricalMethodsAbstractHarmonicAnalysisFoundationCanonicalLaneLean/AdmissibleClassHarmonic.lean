import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundation

structure AdmissibleHarmonicObject where
  locallyCompactGroup : Type u
  topology : TopologicalSpace locallyCompactGroup
  locallyCompact : LocallyCompactGroup locallyCompactGroup
  haarMeasure : HaarMeasure locallyCompactGroup locallyCompact
  pontryaginDual : PontryaginDualityCertificate
  tannakaKrein : TannakaKreinCertificate

def HarmonicWitnessClosed (A : AdmissibleHarmonicObject) : Prop :=
  PontryaginDualityClosed A.pontryaginDual ∧ TannakaKreinClosed A.tannakaKrein

theorem harmonic_witness_closed (A : AdmissibleHarmonicObject) : HarmonicWitnessClosed A := by
  sorry

end CategoricalMethodsAbstractHarmonicAnalysisFoundation
end HautevilleHouse