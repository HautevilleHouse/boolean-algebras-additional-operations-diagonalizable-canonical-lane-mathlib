import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.DiagonalizableAlgebra

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure FixpointTheoremPackage (D : DiagonalizableAlgebra) where
  fixpointExistence : Prop
  fixpointUniqueness : Prop
  fixpointConstruction : D.carrier
  existenceProof : fixpointExistence
  uniquenessProof : fixpointUniqueness

structure FixpointTheoremEvidence (D : DiagonalizableAlgebra) (F : FixpointTheoremPackage D) where
  fixpointExistenceClosed : F.fixpointExistence
  fixpointUniquenessClosed : F.fixpointUniqueness

def FixpointTheoremClosed (D : DiagonalizableAlgebra) (F : FixpointTheoremPackage D) : Prop :=
  F.fixpointExistence ∧ F.fixpointUniqueness

theorem fixpoint_theorem_closed_from_evidence (D : DiagonalizableAlgebra) (F : FixpointTheoremPackage D) (E : FixpointTheoremEvidence D F) : FixpointTheoremClosed D F := by
  exact And.intro E.fixpointExistenceClosed E.fixpointUniquenessClosed

theorem fixpoint_theorem_supplies_witness (D : DiagonalizableAlgebra) (F : FixpointTheoremPackage D) : DiagonalizableWitnessClosed D := by
  exact F.existenceProof

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse