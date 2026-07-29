import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure ComplexManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : Type v
  dimension : Nat
  complexDimensionEqOne : dimension = 1
  hausdorff : Prop
  secondCountable : Prop
  holomorphicAtlas : Prop

structure ComplexManifoldEvidence (M : ComplexManifold) where
  hausdorffClosed : M.hausdorff
  secondCountableClosed : M.secondCountable
  holomorphicAtlasClosed : M.holomorphicAtlas

def ComplexManifoldClosed (M : ComplexManifold) : Prop :=
  M.hausdorff ∧ M.secondCountable ∧ M.holomorphicAtlas

theorem complex_manifold_closed_from_evidence (M : ComplexManifold) (E : ComplexManifoldEvidence M) :
    ComplexManifoldClosed M := by
  exact And.intro E.hausdorffClosed (And.intro E.secondCountableClosed E.holomorphicAtlasClosed)

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse