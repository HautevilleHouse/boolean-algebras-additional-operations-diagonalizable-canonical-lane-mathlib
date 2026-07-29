import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiagonalizableWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse