import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.GateLemmas
import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.FixpointTheorem

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

def ConstrainedDiagonalizableClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diagonalizable_endgame (A : AdmissibleClass) : ConstrainedDiagonalizableClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse