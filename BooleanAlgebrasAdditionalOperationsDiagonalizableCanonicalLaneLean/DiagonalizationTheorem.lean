import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.BooleanAlgebraWithDiagonalizableOperator

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

theorem diagonalization_fixed_point (B : BooleanAlgebraWithDiagonalizableOperator) : Prop :=
  ∀ p, ∃ q, B.box (B.join (B.compl p) q) = q

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse