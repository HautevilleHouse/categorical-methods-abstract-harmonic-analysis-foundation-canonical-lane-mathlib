import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure PeterWeylPackage (G : Type u) [TopologicalSpace G] [Group G] [LocallyCompactGroup G] [IsCompact G] where
  irreducibleRepresentations : Set (Representation G ℂ)
  peterWeylDecomposition : (L² G ℂ) ≃ₗ[ℂ] ⨁ (π : irreducibleRepresentations), π ⊗ π.dual
  isUnitary : Prop
  completeness : Prop

structure PeterWeylEvidence (P : PeterWeylPackage) where
  unitaryClosed : P.isUnitary
  completenessClosed : P.completeness

def PeterWeylClosed (P : PeterWeylPackage) : Prop :=
  P.isUnitary ∧ P.completeness

theorem peter_weyl_closed_from_evidence (P : PeterWeylPackage) (E : PeterWeylEvidence P) : PeterWeylClosed P := by
  exact And.intro E.unitaryClosed E.completenessClosed

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse