import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundation

structure PontryaginDualityCertificate where
  dualGroupConstructed : Prop
  dualityIsomorphism : Prop
  bidualIsIdentity : Prop
  dualityIsomorphismTerm : dualityIsomorphism
  bidualIsIdentityTerm : bidualIsIdentity

structure PontryaginDualityEvidence (C : PontryaginDualityCertificate) where
  dualGroupConstructedClosed : C.dualGroupConstructed
  dualityIsomorphismClosed : C.dualityIsomorphism
  bidualIsIdentityClosed : C.bidualIsIdentity

def PontryaginDualityClosed (C : PontryaginDualityCertificate) : Prop :=
  C.dualGroupConstructed ∧ C.dualityIsomorphism ∧ C.bidualIsIdentity

theorem pontryagin_duality_closed_from_evidence (C : PontryaginDualityCertificate) (E : PontryaginDualityEvidence C) :
    PontryaginDualityClosed C := by
  exact And.intro E.dualGroupConstructedClosed (And.intro E.dualityIsomorphismClosed E.bidualIsIdentityClosed)

end CategoricalMethodsAbstractHarmonicAnalysisFoundation
end HautevilleHouse