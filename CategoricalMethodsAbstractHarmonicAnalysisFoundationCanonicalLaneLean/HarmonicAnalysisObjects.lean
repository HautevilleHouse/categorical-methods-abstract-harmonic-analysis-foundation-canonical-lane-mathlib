import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure LocallyCompactGroup where
  carrier : Type u
  topology : TopologicalSpace carrier
  group : Group carrier
  locallyCompact : Prop
  hausdorff : Prop

default instance : TopologicalSpace (LocallyCompactGroup.carrier) := LocallyCompactGroup.topology

structure HarmonicAnalysisAdmittedObject where
  group : LocallyCompactGroup
  abelian : Prop
  dualGroup : LocallyCompactGroup
  pontryaginDuality : Prop
  conclusion : pontryaginDuality

def HarmonicAnalysisWitnessClosed (O : HarmonicAnalysisAdmittedObject) : Prop :=
  O.pontryaginDuality

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse