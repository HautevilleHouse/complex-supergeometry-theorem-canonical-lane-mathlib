import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure SheafCohomologyPackage (M : ComplexManifoldPackage) where
  sheaf : Type u
  cohomologyGroups : ℕ → Type v
  exactSequence : Prop
  vanishingTheorem : Prop
  serreDuality : Prop

structure SheafCohomologyEvidence {M : ComplexManifoldPackage}
    (S : SheafCohomologyPackage M) where
  exactSequenceClosed : S.exactSequence
  vanishingTheoremClosed : S.vanishingTheorem
  serreDualityClosed : S.serreDuality

def SheafCohomologyClosed {M : ComplexManifoldPackage}
    (S : SheafCohomologyPackage M) : Prop :=
  S.exactSequence ∧ S.vanishingTheorem ∧ S.serreDuality

theorem sheaf_cohomology_closed_from_evidence {M : ComplexManifoldPackage}
    (S : SheafCohomologyPackage M) (E : SheafCohomologyEvidence S) :
    SheafCohomologyClosed S := by
  exact And.intro E.exactSequenceClosed (And.intro E.vanishingTheoremClosed E.serreDualityClosed)

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse