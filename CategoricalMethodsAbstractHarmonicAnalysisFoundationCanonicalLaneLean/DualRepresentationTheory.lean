import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure DualRepresentationPackage where
  group : Type u
  groupTopology : TopologicalSpace group
  representationCategory : Type v
  dualObject : representationCategory
  dualityPairing : Prop
  categoricalTensorProduct : Prop
  rhoDualDefined : Prop

structure DualRepresentationEvidence (D : DualRepresentationPackage) where
  dualityPairingClosed : D.dualityPairing
  categoricalTensorProductClosed : D.categoricalTensorProduct
  rhoDualDefinedClosed : D.rhoDualDefined

def DualRepresentationClosed (D : DualRepresentationPackage) : Prop :=
  D.dualityPairing ∧ D.categoricalTensorProduct ∧ D.rhoDualDefined

theorem dual_representation_closed_from_evidence (D : DualRepresentationPackage)
    (E : DualRepresentationEvidence D) : DualRepresentationClosed D := by
  exact And.intro E.dualityPairingClosed
    (And.intro E.categoricalTensorProductClosed E.rhoDualDefinedClosed)

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse