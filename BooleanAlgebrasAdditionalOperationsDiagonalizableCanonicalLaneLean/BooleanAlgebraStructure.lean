import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

/-! # Boolean Algebra with Additional Unary Operator -/

structure BooleanAlgebraWithOperator (α : Type u) where
  bot : α
  top : α
  sup : α → α → α
  inf : α → α → α
  compl : α → α
  op : α → α
  booleanAlgebraAxioms : Prop
  operatorAxioms : Prop

structure BooleanAlgebraWithOperatorEvidence (B : BooleanAlgebraWithOperator α) where
  booleanAlgebraAxiomsClosed : B.booleanAlgebraAxioms
  operatorAxiomsClosed : B.operatorAxioms

def BooleanAlgebraWithOperatorClosed (B : BooleanAlgebraWithOperator α) : Prop :=
  B.booleanAlgebraAxioms ∧ B.operatorAxioms

theorem boolean_algebra_with_operator_closed_from_evidence
    (B : BooleanAlgebraWithOperator α) (E : BooleanAlgebraWithOperatorEvidence B) :
    BooleanAlgebraWithOperatorClosed B := by
  exact And.intro E.booleanAlgebraAxiomsClosed E.operatorAxiomsClosed

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse