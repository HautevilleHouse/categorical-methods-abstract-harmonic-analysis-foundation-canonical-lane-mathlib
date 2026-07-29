import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure LocallyCompactGroup (G : Type u) where
  group : Group G
  topology : TopologicalSpace G
  hausdorff : T2Space G
  locallyCompact : LocallyCompactSpace G
  group : Group G

structure LocallyCompactGroupEvidence (G : LocallyCompactGroup) where
  hausdorffClosed : G.hausdorff
  locallyCompactClosed : G.locallyCompact

def LocallyCompactGroupClosed (G : LocallyCompactGroup) : Prop :=
  G.hausdorff ∧ G.locallyCompact

theorem locally_compact_group_closed_from_evidence (G : LocallyCompactGroup) (E : LocallyCompactGroupEvidence G) : LocallyCompactGroupClosed G := by
  exact And.intro E.hausdorffClosed E.locallyCompactClosed

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
