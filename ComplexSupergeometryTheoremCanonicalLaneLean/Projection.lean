import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def complexProjection : Projection ComplexEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem complex_projection_idempotent (x : ComplexEndgameState) :
    complexProjection.toFun (complexProjection.toFun x) = complexProjection.toFun x := by
  exact complexProjection.idempotent x

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse
