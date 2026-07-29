import ComplexSupergeometryTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ComplexSupergeoSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  supermanifoldStructure : Prop

structure ComplexSupergeoAdmittedObject where
  space : ComplexSupergeoSpace
  compactKahler : Prop
  superRiemannSurface : Prop
  moduliModel : Type
  moduliTopology : TopologicalSpace moduliModel
  holomorphicToModuli : Prop
  conclusion : holomorphicToModuli

structure ComplexSupergeoEndgameState where
  object : ComplexSupergeoAdmittedObject

def ComplexSupergeoWitnessClosed (O : ComplexSupergeoAdmittedObject) : Prop :=
  O.holomorphicToModuli

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse