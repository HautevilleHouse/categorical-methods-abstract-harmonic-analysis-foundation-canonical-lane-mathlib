import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure LocallyCompactGroup (G : Type u) [TopologicalSpace G] [Group G] where
  hausdorff : T2Space G
  locallyCompact : LocallyCompactSpace G
  topologicalGroup : TopologicalGroup G

structure CategoryOfLocallyCompactGroups where
  objects : Type (u+1)
  morphisms : objects → objects → Type u
  composition : ∀ {A B C : objects}, morphisms B C → morphisms A B → morphisms A C
  identity : ∀ A : objects, morphisms A A
  continuousHoms : ∀ (G H : objects), morphisms G H ≃ ContinuousMonoidHom (G : Type u) (H : Type u)
  categoryAxioms : Prop

structure CategoryEvidence (C : CategoryOfLocallyCompactGroups) where
  compositionAssociative : C.categoryAxioms
  identityLeftNeutral : C.categoryAxioms
  identityRightNeutral : C.categoryAxioms
  continuousHomsBijective : ∀ (G H : C.objects), Function.Bijective (C.continuousHoms G H)

def CategoryClosed (C : CategoryOfLocallyCompactGroups) : Prop :=
  C.categoryAxioms

theorem category_closed_from_evidence (C : CategoryOfLocallyCompactGroups) (E : CategoryEvidence C) : CategoryClosed C := by
  exact E.compositionAssociative

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse