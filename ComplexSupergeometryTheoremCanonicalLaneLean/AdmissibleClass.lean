import canonicalLaneMathlib.ComplexManifoldObjects

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ComplexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComplexWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse
