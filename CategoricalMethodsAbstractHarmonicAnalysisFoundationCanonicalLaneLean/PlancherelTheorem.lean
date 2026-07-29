import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure PlancherelTheoremPackage where
  group : Type u
  topology : TopologicalSpace group
  groupStructure : Group group
  haarMeasure : Measure group
  dualGroup : Type v
  dualMeasure : Measure dualGroup
  plancherelIsometry : Prop
  isometryL2 : Prop

structure PlancherelTheoremEvidence (P : PlancherelTheoremPackage) where
  plancherelIsometryClosed : P.plancherelIsometry
  isometryL2Closed : P.isometryL2

def PlancherelTheoremClosed (P : PlancherelTheoremPackage) : Prop :=
  P.plancherelIsometry ∧ P.isometryL2

theorem plancherel_theorem_closed_from_evidence (P : PlancherelTheoremPackage)
    (E : PlancherelTheoremEvidence P) : PlancherelTheoremClosed P := by
  exact And.intro E.plancherelIsometryClosed E.isometryL2Closed

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse