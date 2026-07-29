import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure GelfandSpectrumPackage (A : Type u) [TopologicalSpace A] [NonUnitalNormedRing A] [BanachAlgebra A] where
  spectrumSpace : Type v
  spectrumTopology : TopologicalSpace spectrumSpace
  gelfandTransform : A → (spectrumSpace → ℂ)
  isometric : Prop
  surjective : Prop

structure GelfandSpectrumEvidence {A : Type u} [TopologicalSpace A] [NonUnitalNormedRing A] [BanachAlgebra A]
    (G : GelfandSpectrumPackage A) where
  isometricClosed : G.isometric
  surjectiveClosed : G.surjective

def GelfandSpectrumClosed {A : Type u} [TopologicalSpace A] [NonUnitalNormedRing A] [BanachAlgebra A]
    (G : GelfandSpectrumPackage A) : Prop :=
  G.isometric ∧ G.surjective

theorem gelfand_spectrum_closed_from_evidence {A : Type u} [TopologicalSpace A] [NonUnitalNormedRing A] [BanachAlgebra A]
    (G : GelfandSpectrumPackage A) (E : GelfandSpectrumEvidence G) : GelfandSpectrumClosed G := by
  exact And.intro E.isometricClosed E.surjectiveClosed

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse
