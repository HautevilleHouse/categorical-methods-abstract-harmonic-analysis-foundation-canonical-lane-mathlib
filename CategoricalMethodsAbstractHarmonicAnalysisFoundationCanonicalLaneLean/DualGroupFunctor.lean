import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure PontryaginDual (G : Type u) [TopologicalSpace G] [Group G] [LocallyCompactGroup G] where
  dualGroup : Type u
  topology : TopologicalSpace dualGroup
  group : Group dualGroup
  locallyCompact : LocallyCompactGroup dualGroup
  pairing : ContinuousBicharacter G (Circle)

structure DualGroupFunctor where
  objectMap : LocallyCompactGroup → LocallyCompactGroup
  morphismMap : ∀ (G H : LocallyCompactGroup), ContinuousMonoidHom G H → ContinuousMonoidHom (objectMap H) (objectMap G)
  contravariant : Prop
  exactnessProperties : Prop
  naturalIsomorphism : Prop

structure DualEvidence (F : DualGroupFunctor) where
  contravariantClosed : F.contravariant
  exactnessClosed : F.exactnessProperties
  naturalIsomorphismClosed : F.naturalIsomorphism

def DualClosed (F : DualGroupFunctor) : Prop :=
  F.contravariant ∧ F.exactnessProperties ∧ F.naturalIsomorphism

theorem dual_closed_from_evidence (F : DualGroupFunctor) (E : DualEvidence F) : DualClosed F := by
  exact And.intro E.contravariantClosed (And.intro E.exactnessClosed E.naturalIsomorphismClosed)

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse