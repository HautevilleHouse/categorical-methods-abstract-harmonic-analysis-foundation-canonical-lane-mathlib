import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisFoundation

structure TannakaKreinCertificate where
  representationCategory : Type u
  fiberFunctor : Type v
  reconstruction : Prop
  equivalence : Prop
  reconstructionTerm : reconstruction
  equivalenceTerm : equivalence

structure TannakaKreinEvidence (C : TannakaKreinCertificate) where
  reconstructionClosed : C.reconstruction
  equivalenceClosed : C.equivalence

def TannakaKreinClosed (C : TannakaKreinCertificate) : Prop :=
  C.reconstruction ∧ C.equivalence

theorem tannaka_krein_closed_from_evidence (C : TannakaKreinCertificate) (E : TannakaKreinEvidence C) :
    TannakaKreinClosed C := by
  exact And.intro E.reconstructionClosed E.equivalenceClosed

end CategoricalMethodsAbstractHarmonicAnalysisFoundation
end HautevilleHouse