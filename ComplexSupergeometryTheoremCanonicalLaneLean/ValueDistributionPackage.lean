import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

structure ValueDistributionPackage (M : ComplexManifold) where
  picardTheorem : Prop
  littlePicardTheorem : Prop
  greatPicardTheorem : Prop
  nevanlinnaTheory : Prop
  juliaSetStructure : Prop

structure ValueDistributionEvidence {M : ComplexManifold} (V : ValueDistributionPackage M) where
  picardTheoremClosed : V.picardTheorem
  littlePicardTheoremClosed : V.littlePicardTheorem
  greatPicardTheoremClosed : V.greatPicardTheorem
  nevanlinnaTheoryClosed : V.nevanlinnaTheory
  juliaSetStructureClosed : V.juliaSetStructure

def ValueDistributionClosed {M : ComplexManifold} (V : ValueDistributionPackage M) : Prop :=
  V.picardTheorem ∧ V.littlePicardTheorem ∧
  V.greatPicardTheorem ∧ V.nevanlinnaTheory ∧ V.juliaSetStructure

theorem value_distribution_closed_from_evidence {M : ComplexManifold} (V : ValueDistributionPackage M) (E : ValueDistributionEvidence V) :
    ValueDistributionClosed V := by
  exact And.intro V.picardTheorem
    (And.intro V.littlePicardTheorem
      (And.intro V.greatPicardTheorem
        (And.intro V.nevanlinnaTheory V.juliaSetStructure)))

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse