import ComplexSupergeometryTheoremCanonicalLaneLean.ComplexSupergeometryAdmissibleClass
import ComplexSupergeometryTheoremCanonicalLaneLean.SuperCurvatureAndCohomology

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure SupermoduliPackage {M : ComplexSupermanifold}
    (C : SuperCurvaturePackage M) where
  moduliSpace : Type u
  compactification : Prop
  singularitiesResolved : Prop
  periodMapDefined : Prop

structure SupermoduliEvidence {M : ComplexSupermanifold}
    {C : SuperCurvaturePackage M} (S : SupermoduliPackage C) where
  compactificationClosed : S.compactification
  singularitiesResolvedClosed : S.singularitiesResolved
  periodMapDefinedClosed : S.periodMapDefined

def SupermoduliClosed {M : ComplexSupermanifold}
    {C : SuperCurvaturePackage M} (S : SupermoduliPackage C) : Prop :=
  S.compactification ∧ S.singularitiesResolved ∧ S.periodMapDefined

theorem supermoduli_closed_from_evidence
    {M : ComplexSupermanifold} {C : SuperCurvaturePackage M}
    (S : SupermoduliPackage C) (E : SupermoduliEvidence S) : SupermoduliClosed S := by
  exact And.intro E.compactificationClosed
    (And.intro E.singularitiesResolvedClosed E.periodMapDefinedClosed)

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse