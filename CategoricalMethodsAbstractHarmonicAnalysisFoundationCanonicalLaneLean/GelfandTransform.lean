import CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure GelfandTransformPackage where
  commutativeBanachAlgebra : Type u
  maximalIdealSpace : Type v
  gelfandMap : commutativeBanachAlgebra → (maximalIdealSpace → ℂ)
  isIsometric : Prop
  isSurjective : Prop
  closure : Prop

structure GelfandTransformEvidence (P : GelfandTransformPackage) where
  isIsometricClosed : P.isIsometric
  isSurjectiveClosed : P.isSurjective
  closureClosed : P.closure

def GelfandTransformClosed (P : GelfandTransformPackage) : Prop :=
  P.isIsometric ∧ P.isSurjective ∧ P.closure

theorem gelfand_transform_closed_from_evidence (P : GelfandTransformPackage) (E : GelfandTransformEvidence P) :
    GelfandTransformClosed P := by
  exact And.intro E.isIsometricClosed (And.intro E.isSurjectiveClosed E.closureClosed)

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse