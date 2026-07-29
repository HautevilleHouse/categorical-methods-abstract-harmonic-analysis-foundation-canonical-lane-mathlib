import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure FellTopologyPackage (X : Type u) [TopologicalSpace X] where
  fellTopology : TopologicalSpace (Set X)
  closedConvergence : Prop
  hausdorffWhenGlocallyCompact : Prop

structure FellTopologyEvidence {X : Type u} [TopologicalSpace X]
    (F : FellTopologyPackage X) where
  closedConvergenceClosed : F.closedConvergence
  hausdorffWhenGlocallyCompactClosed : F.hausdorffWhenGlocallyCompact

def FellTopologyClosed {X : Type u} [TopologicalSpace X]
    (F : FellTopologyPackage X) : Prop :=
  F.closedConvergence ∧ F.hausdorffWhenGlocallyCompact

theorem fell_topology_closed_from_evidence
    {X : Type u} [TopologicalSpace X]
    (F : FellTopologyPackage X) (E : FellTopologyEvidence F) :
    FellTopologyClosed F := by
  exact And.intro E.closedConvergenceClosed E.hausdorffWhenGlocallyCompactClosed

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse