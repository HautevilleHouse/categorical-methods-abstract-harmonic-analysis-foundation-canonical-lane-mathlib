import canonicalLaneMathlib.AdmissibleClass
namespace HautevilleHouse
namespace categorical_methods_abstract_harmonic_analysis_foundation_canonical_lane_mathlib
def AdmissibleClass : Type := canonicalLaneMathlib.AdmissibleClass
def bridgeClosed (A : AdmissibleClass) : Prop := True
def gateClosed (A : AdmissibleClass) : Prop := True
def bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := trivial
def gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := trivial
end categorical_methods_abstract_harmonic_analysis_foundation_canonical_lane_mathlib
end HautevilleHouse
