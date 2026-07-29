import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure RiemannRochSupermanifoldPackage where
  supermanifold : Type u
  complexStructure : Prop
  superstructure : Prop
  compactKahler : Prop
  riemannRochVanishing : Prop

structure RiemannRochSupermanifoldEvidence (P : RiemannRochSupermanifoldPackage) where
  complexStructureClosed : P.complexStructure
  superstructureClosed : P.superstructure
  compactKahlerClosed : P.compactKahler
  riemannRochVanishingClosed : P.riemannRochVanishing

def RiemannRochSupermanifoldClosed (P : RiemannRochSupermanifoldPackage) : Prop :=
  P.complexStructure ∧ P.superstructure ∧ P.compactKahler ∧ P.riemannRochVanishing

theorem riemann_roch_supermanifold_closed_from_evidence
    (P : RiemannRochSupermanifoldPackage) (E : RiemannRochSupermanifoldEvidence P) :
    RiemannRochSupermanifoldClosed P := by
  exact And.intro E.complexStructureClosed
    (And.intro E.superstructureClosed
      (And.intro E.compactKahlerClosed E.riemannRochVanishingClosed))

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse