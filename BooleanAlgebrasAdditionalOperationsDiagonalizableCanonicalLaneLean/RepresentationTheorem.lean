import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.ModalOperator

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure RepresentationPackage {A : DiagonalizableBooleanAlgebra} (M : ModalOperatorPackage A) where
  frame : Type u
  accessibility : frame → frame → Prop
  representationMap : A.carrier → (frame → Prop)
  representationInjective : Function.Injective representationMap
  representationPreservesOps : ∀ (x y : A.carrier),
    representationMap (A.meet x y) = representationMap x ∩ representationMap y ∧
    representationMap (A.join x y) = representationMap x ∪ representationMap y ∧
    representationMap (A.compl x) = - representationMap x ∧
    representationMap (A.top) = Set.univ ∧
    representationMap (A.bot) = Set.empty ∧
    representationMap (A.diamond x) = { w : frame | ∃ v : frame, accessibility w v ∧ v ∈ representationMap x } ∧
    representationMap (A.box x) = { w : frame | ∀ v : frame, accessibility w v → v ∈ representationMap x }
  representationCompletes : Prop

def RepresentationPackageClosed {A : DiagonalizableBooleanAlgebra} {M : ModalOperatorPackage A} (R : RepresentationPackage M) : Prop :=
  R.representationInjective ∧ R.representationPreservesOps ∧ R.representationCompletes

theorem representation_closed_from_evidence {A : DiagonalizableBooleanAlgebra} {M : ModalOperatorPackage A}
    (R : RepresentationPackage M) (E : R.representationInjective ∧ R.representationPreservesOps ∧ R.representationCompletes) :
    RepresentationPackageClosed R := by
  exact And.intro E.1 (And.intro E.2.1 E.2.2)

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse