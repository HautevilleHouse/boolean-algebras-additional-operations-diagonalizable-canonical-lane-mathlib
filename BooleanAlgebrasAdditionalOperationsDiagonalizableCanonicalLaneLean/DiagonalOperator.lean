import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.BooleanAlgebraAdditionalOperations

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure DiagonalOperatorPackage (A : DiagonalizableBooleanAlgebra) where
  normal : (∀ x y : A.carrier, A.diagonal (A.sup x y) = A.sup (A.diagonal x) (A.diagonal y)) ∧
           (A.diagonal A.bot = A.bot)
  monotone : ∀ x y : A.carrier, A.inf x y = x → A.inf (A.diagonal x) (A.diagonal y) = A.diagonal x
  lobCondition : ∀ x : A.carrier, A.diagonal (A.sup (A.diagonal x) x) ≤ A.diagonal x

def DiagonalOperatorClosed {A : DiagonalizableBooleanAlgebra} (P : DiagonalOperatorPackage A) : Prop :=
  P.normal.1 ∧ P.normal.2 ∧ P.monotone ∧ P.lobCondition

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse