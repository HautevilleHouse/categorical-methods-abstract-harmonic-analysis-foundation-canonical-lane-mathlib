import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean

structure LocallyCompactGroup (G : Type u) where
  group : Group G
  topology : TopologicalSpace G
  hausdorff : T2Space G
  locallyCompact : LocallyCompactSpace G
  continuousMul : ContinuousMul G
  continuousInv : ContinuousInv G

structure LocallyCompactGroupMorphism (G H : Type u) [LocallyCompactGroup G] [LocallyCompactGroup H] where
  map : G → H
  continuous : Continuous map
  respectsMul : ∀ x y : G, map (x * y) = map x * map y

structure LocallyCompactGroupCategory where
  objects : Type (u+1)
  morphisms : ∀ (A B : objects), Type u
  identity : ∀ (A : objects), morphisms A A
  composition : ∀ (A B C : objects), morphisms A B → morphisms B C → morphisms A C
  associativity : ∀ (A B C D : objects) (f : morphisms A B) (g : morphisms B C) (h : morphisms C D),
    composition A C D (composition A B C f g) h = composition A B D f (composition B C D g h)
  identityLeft : ∀ (A B : objects) (f : morphisms A B), composition A B B f (identity B) = f
  identityRight : ∀ (A B : objects) (f : morphisms A B), composition A A B (identity A) f = f

structure LocallyCompactGroupCategoryAdmissibleObject where
  category : LocallyCompactGroupCategory
  haarmeasureExistence : Prop
  unicityOfHaar : Prop
  conclusion : haarmeasureExistence ∧ unicityOfHaar
  conclusion_proof : conclusion

end CategoricalMethodsAbstractHarmonicAnalysisFoundationCanonicalLaneLean
end HautevilleHouse