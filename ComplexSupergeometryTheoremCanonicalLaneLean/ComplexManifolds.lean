import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure ComplexManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Type v
  dimension : ℕ
  smoothAtlas : Prop
  holomorphicTransition : Prop
  complexManifoldSmooth : Prop

structure ComplexManifoldEvidence (M : ComplexManifoldPackage) where
  smoothAtlasClosed : M.smoothAtlas
  holomorphicTransitionClosed : M.holomorphicTransition
  complexManifoldSmoothClosed : M.complexManifoldSmooth

def ComplexManifoldClosed (M : ComplexManifoldPackage) : Prop :=
  M.smoothAtlas ∧ M.holomorphicTransition ∧ M.complexManifoldSmooth

theorem complex_manifold_closed_from_evidence (M : ComplexManifoldPackage)
    (E : ComplexManifoldEvidence M) : ComplexManifoldClosed M := by
  exact And.intro E.smoothAtlasClosed (And.intro E.holomorphicTransitionClosed E.complexManifoldSmoothClosed)

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse