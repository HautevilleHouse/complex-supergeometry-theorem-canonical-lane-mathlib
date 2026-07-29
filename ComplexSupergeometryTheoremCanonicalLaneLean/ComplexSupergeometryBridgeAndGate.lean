import ComplexSupergeometryTheoremCanonicalLaneLean.ComplexSupergeometryAdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

def bridgeClosed (A : ComplexSupergeometryAdmissibleClass) : Prop :=
  A.object.complexSupergeometryTheoremStatement

theorem bridge_from_admissible_class (A : ComplexSupergeometryAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.proofWitness

def gateClosed (A : ComplexSupergeometryAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ComplexSupergeometryAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse