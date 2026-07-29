import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure DiagonalizableBooleanAlgebra where
  carrier : Type u
  top : carrier
  bot : carrier
  sup : carrier → carrier → carrier
  inf : carrier → carrier → carrier
  compl : carrier → carrier
  diagonal : carrier → carrier  -- the diagonalizable operator
  booleanAlgebraAxioms : Prop
  diagonalOperatorAxioms : Prop
  consequence : Prop

def DiagonalizableAlgebraClosed (A : DiagonalizableBooleanAlgebra) : Prop :=
  A.booleanAlgebraAxioms ∧ A.diagonalOperatorAxioms ∧ A.consequence

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse