import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure ComplexSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

default instance : TopologicalSpace (ComplexSpace) := inferInstance

structure ComplexAdmittedObject where
  manifold : ComplexSpace
  closedManifold : Prop
  kahlerCondition : Prop
  superstructure : Type
  superTopology : TopologicalSpace superstructure
  superderivedIsomorphism : Prop
  conclusion : superderivedIsomorphism

structure ComplexEndgameState where
  object : ComplexAdmittedObject

def ComplexWitnessClosed (O : ComplexAdmittedObject) : Prop :=
  O.superderivedIsomorphism

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse
