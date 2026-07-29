import ComplexSupergeometryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComplexSupergeoWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComplexSupergeometryTheoremCanonicalLaneLean
end HautevilleHouse