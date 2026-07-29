import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure AnalyticContinuationPackage (M : ComplexManifold) where
  identityTheorem : Prop
  uniquenessOfAnalyticContinuation : Prop
  monodromyTheorem : Prop
  analyticContinuationAlongPaths : Prop

structure AnalyticContinuationEvidence {M : ComplexManifold} (A : AnalyticContinuationPackage M) where
  identityTheoremClosed : A.identityTheorem
  uniquenessOfAnalyticContinuationClosed : A.uniquenessOfAnalyticContinuation
  monodromyTheoremClosed : A.monodromyTheorem
  analyticContinuationAlongPathsClosed : A.analyticContinuationAlongPaths

def AnalyticContinuationClosed {M : ComplexManifold} (A : AnalyticContinuationPackage M) : Prop :=
  A.identityTheorem ∧ A.uniquenessOfAnalyticContinuation ∧
  A.monodromyTheorem ∧ A.analyticContinuationAlongPaths

theorem analytic_continuation_closed_from_evidence {M : ComplexManifold} (A : AnalyticContinuationPackage M) (E : AnalyticContinuationEvidence A) :
    AnalyticContinuationClosed A := by
  exact And.intro E.identityTheoremClosed
    (And.intro E.uniquenessOfAnalyticContinuationClosed
      (And.intro E.monodromyTheoremClosed E.analyticContinuationAlongPathsClosed))

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse