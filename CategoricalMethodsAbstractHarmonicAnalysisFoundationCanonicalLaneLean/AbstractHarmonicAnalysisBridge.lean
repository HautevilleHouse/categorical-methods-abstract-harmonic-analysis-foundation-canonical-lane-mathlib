import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.PontryaginDuality
import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.FourierTransform

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LocallyCompactGroupClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedHarmonicAnalysisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_harmonic_analysis_endgame (A : AdmissibleClass) : ConstrainedHarmonicAnalysisClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
