import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure PontryaginDualityPackage (G : Type u) [CommGroup G] [TopologicalSpace G] [TopologicalGroup G] where
  dualGroup : Type u
  dualTopology : TopologicalSpace dualGroup
  dualGroupIsGroup : CommGroup dualGroup
  dualGroupIsTopological : TopologicalGroup dualGroup
  isomorphismExists : Prop
  naturality : Prop

structure PontryaginDualityEvidence {G : Type u} [CommGroup G] [TopologicalSpace G] [TopologicalGroup G]
    (P : PontryaginDualityPackage G) where
  isomorphismExistsClosed : P.isomorphismExists
  naturalityClosed : P.naturality

def PontryaginDualityClosed {G : Type u} [CommGroup G] [TopologicalSpace G] [TopologicalGroup G]
    (P : PontryaginDualityPackage G) : Prop :=
  P.isomorphismExists ∧ P.naturality

theorem pontryagin_duality_closed_from_evidence
    {G : Type u} [CommGroup G] [TopologicalSpace G] [TopologicalGroup G]
    (P : PontryaginDualityPackage G) (E : PontryaginDualityEvidence P) :
    PontryaginDualityClosed P := by
  exact And.intro E.isomorphismExistsClosed E.naturalityClosed

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse