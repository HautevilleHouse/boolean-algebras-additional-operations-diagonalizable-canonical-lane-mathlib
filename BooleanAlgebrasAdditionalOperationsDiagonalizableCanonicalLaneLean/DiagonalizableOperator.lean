import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure DiagonalizableOperatorPackage (B : Type) [BooleanAlgebra B] where
  operator : B → B
  operatorIdempotent : ∀ x, operator (operator x) = operator x
  operatorMonotone : ∀ x y, x ≤ y → operator x ≤ operator y
  operatorPreservesTop : operator ⊤ = ⊤

structure DiagonalizableOperatorEvidence {B : Type} [BooleanAlgebra B]
    (P : DiagonalizableOperatorPackage B) where
  operatorIdempotentClosed : P.operatorIdempotent
  operatorMonotoneClosed : P.operatorMonotone
  operatorPreservesTopClosed : P.operatorPreservesTop

def DiagonalizableOperatorClosed {B : Type} [BooleanAlgebra B]
    (P : DiagonalizableOperatorPackage B) : Prop :=
  P.operatorIdempotent ∧ P.operatorMonotone ∧ P.operatorPreservesTop

theorem diagonalizable_operator_closed_from_evidence
    {B : Type} [BooleanAlgebra B] (P : DiagonalizableOperatorPackage B)
    (E : DiagonalizableOperatorEvidence P) : DiagonalizableOperatorClosed P := by
  exact And.intro E.operatorIdempotentClosed
    (And.intro E.operatorMonotoneClosed E.operatorPreservesTopClosed)

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse