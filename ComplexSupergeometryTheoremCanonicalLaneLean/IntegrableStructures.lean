import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure IntegrableStructuresPackage (M : ComplexManifoldPackage)
    (S : SupermanifoldPackage M) where
  complexStructureIntegrable : Prop
  superstructureIntegrable : Prop
  compatibilityCondition : Prop

structure IntegrableStructuresEvidence {M : ComplexManifoldPackage}
    {S : SupermanifoldPackage M} (I : IntegrableStructuresPackage M S) where
  complexStructureIntegrableClosed : I.complexStructureIntegrable
  superstructureIntegrableClosed : I.superstructureIntegrable
  compatibilityConditionClosed : I.compatibilityCondition

def IntegrableStructuresClosed {M : ComplexManifoldPackage}
    {S : SupermanifoldPackage M} (I : IntegrableStructuresPackage M S) : Prop :=
  I.complexStructureIntegrable ∧ I.superstructureIntegrable ∧ I.compatibilityCondition

theorem integrable_structures_closed_from_evidence {M : ComplexManifoldPackage}
    {S : SupermanifoldPackage M} (I : IntegrableStructuresPackage M S)
    (E : IntegrableStructuresEvidence I) : IntegrableStructuresClosed I := by
  exact And.intro E.complexStructureIntegrableClosed
    (And.intro E.superstructureIntegrableClosed E.compatibilityConditionClosed)

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse