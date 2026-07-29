import ComplexSupergeometryTheoremCanonicalLaneLean.ComplexSupergeometryBridgeAndGate

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

def ConstrainedComplexSupergeometryClosure (A : ComplexSupergeometryAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_complex_supergeometry_endgame (A : ComplexSupergeometryAdmissibleClass) :
    ConstrainedComplexSupergeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse