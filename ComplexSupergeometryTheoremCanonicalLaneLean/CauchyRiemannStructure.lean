import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure CauchyRiemannStructure (M : ComplexManifold) where
  almostComplexStructure : Type u
  integrability : Prop
  dolbeaultOperator : Type v
  crEquationSatisfied : Prop

structure CauchyRiemannEvidence {M : ComplexManifold} (CR : CauchyRiemannStructure M) where
  integrabilityClosed : CR.integrability
  crEquationSatisfiedClosed : CR.crEquationSatisfied

def CauchyRiemannClosed {M : ComplexManifold} (CR : CauchyRiemannStructure M) : Prop :=
  CR.integrability ∧ CR.crEquationSatisfied

theorem cauchy_riemann_closed_from_evidence {M : ComplexManifold} (CR : CauchyRiemannStructure M) (E : CauchyRiemannEvidence CR) :
    CauchyRiemannClosed CR := by
  exact And.intro E.integrabilityClosed E.crEquationSatisfiedClosed

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse