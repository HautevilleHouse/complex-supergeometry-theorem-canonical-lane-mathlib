import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure ComplexSupermanifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : Prop
  superStructure : Prop
  dimension : Nat × Nat

structure SuperAdmittedObject where
  manifold : ComplexSupermanifold
  complexSupergeometryTheoremStatement : Prop
  proofWitness : complexSupergeometryTheoremStatement

structure ComplexSupergeometryAdmissibleClass where
  object : SuperAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def superAdmittedClosure (A : ComplexSupergeometryAdmissibleClass) : Prop :=
  A.object.complexSupergeometryTheoremStatement ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse