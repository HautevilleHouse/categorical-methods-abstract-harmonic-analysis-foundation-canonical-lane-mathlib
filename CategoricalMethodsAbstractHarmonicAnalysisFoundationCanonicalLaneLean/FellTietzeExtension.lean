import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure FellTietzeExtensionPackage (X : Type u) [TopologicalSpace X] [LocallyCompact T2] (A : Set X) where
  closedA : IsClosed A
  extensionExists : Prop
  normPreserving : Prop

structure FellTietzeExtensionEvidence {X : Type u} [TopologicalSpace X] [LocallyCompact T2] {A : Set X}
    (F : FellTietzeExtensionPackage X A) where
  extensionExistsClosed : F.extensionExists
  normPreservingClosed : F.normPreserving

def FellTietzeExtensionClosed {X : Type u} [TopologicalSpace X] [LocallyCompact T2] {A : Set X}
    (F : FellTietzeExtensionPackage X A) : Prop :=
  F.extensionExists ∧ F.normPreserving

theorem fell_tietze_extension_closed_from_evidence {X : Type u} [TopologicalSpace X] [LocallyCompact T2] {A : Set X}
    (F : FellTietzeExtensionPackage X A) (E : FellTietzeExtensionEvidence F) : FellTietzeExtensionClosed F := by
  exact And.intro E.extensionExistsClosed E.normPreservingClosed

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
