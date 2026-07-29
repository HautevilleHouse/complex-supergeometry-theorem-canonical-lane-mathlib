import ComplexSupergeometryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def complexSupergeoProjection : Projection ComplexSupergeoEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem complex_supergeo_projection_idempotent (x : ComplexSupergeoEndgameState) :
    complexSupergeoProjection.toFun (complexSupergeoProjection.toFun x) = complexSupergeoProjection.toFun x := by
  exact complexSupergeoProjection.idempotent x

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse