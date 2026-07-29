import ComplexSupergeometryTheoremCanonicalLaneLean.ComplexSupergeometryAdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure SuperCurvaturePackage (M : ComplexSupermanifold) where
  superConnection : Type u
  curvatureForm : Type v
  bianchiIdentity : Prop
  chernClassesComputed : Prop
  superTraceDefined : Prop

structure SuperCurvatureEvidence {M : ComplexSupermanifold} (C : SuperCurvaturePackage M) where
  bianchiIdentityClosed : C.bianchiIdentity
  chernClassesComputedClosed : C.chernClassesComputed
  superTraceDefinedClosed : C.superTraceDefined

def SuperCurvatureClosed {M : ComplexSupermanifold} (C : SuperCurvaturePackage M) : Prop :=
  C.bianchiIdentity ∧ C.chernClassesComputed ∧ C.superTraceDefined

theorem super_curvature_closed_from_evidence
    {M : ComplexSupermanifold} (C : SuperCurvaturePackage M)
    (E : SuperCurvatureEvidence C) : SuperCurvatureClosed C := by
  exact And.intro E.bianchiIdentityClosed
    (And.intro E.chernClassesComputedClosed E.superTraceDefinedClosed)

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse