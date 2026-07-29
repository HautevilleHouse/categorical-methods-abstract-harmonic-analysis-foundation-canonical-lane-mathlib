import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure CategoricalHarmonicAdmittedObject where
  carrier : Type
  structure : Prop
  harmonicAnalysisSatisfied : Prop
  conclusion : harmonicAnalysisSatisfied

def CategoricalHarmonicWitnessClosed (O : CategoricalHarmonicAdmittedObject) : Prop :=
  O.harmonicAnalysisSatisfied

theorem categorical_harmonic_witness_closed (O : CategoricalHarmonicAdmittedObject) :
    CategoricalHarmonicWitnessClosed O := O.conclusion

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse