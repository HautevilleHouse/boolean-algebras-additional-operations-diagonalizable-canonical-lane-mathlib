import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.BooleanAlgebraWithOperators

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure DiagonalizableAlgebra extends BooleanAlgebraWithOperators where
  diagonalizableAxiom : ∀ x : carrier, box (box x → x) ≤ box x
  fixedPointPrinciple : ∀ f : carrier → carrier, (∀ x, diamond (f x) ≤ f (diamond x)) → (∃ p, p = f p)

structure DiagonalizableEvidence (D : DiagonalizableAlgebra) where
  diagonalizableAxiomClosed : D.diagonalizableAxiom
  fixedPointPrincipleClosed : D.fixedPointPrinciple

def DiagonalizableClosed (D : DiagonalizableAlgebra) : Prop :=
  D.diagonalizableAxiom ∧ D.fixedPointPrinciple

def DiagonalizableWitnessClosed (D : DiagonalizableAlgebra) : Prop := D.fixedPointPrinciple

theorem diagonalizable_closed_from_evidence (D : DiagonalizableAlgebra) (E : DiagonalizableEvidence D) : DiagonalizableClosed D := by
  exact And.intro E.diagonalizableAxiomClosed E.fixedPointPrincipleClosed

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse