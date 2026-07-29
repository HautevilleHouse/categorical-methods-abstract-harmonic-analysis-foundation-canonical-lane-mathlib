import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundation

def bridgeClosed (A : AdmissibleHarmonicObject) : Prop :=
  HarmonicWitnessClosed A

theorem bridge_from_admissible_class (A : AdmissibleHarmonicObject) : bridgeClosed A := by
  exact harmonic_witness_closed A

def gateClosed (A : AdmissibleHarmonicObject) : Prop :=
  A.haarMeasure.innerRegular ∧ A.pontryaginDual.dualGroupConstructed

theorem gate_from_admissible_class (A : AdmissibleHarmonicObject) : gateClosed A := by
  refine And.intro ?_ ?_
  · exact A.haarMeasure.innerRegular
  · exact A.pontryaginDual.dualGroupConstructed

def ConstrainedHarmonicClosure (A : AdmissibleHarmonicObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_harmonic_endgame (A : AdmissibleHarmonicObject) : ConstrainedHarmonicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricalMethodsAbstractHarmonicAnalysisFoundation
end HautevilleHouse