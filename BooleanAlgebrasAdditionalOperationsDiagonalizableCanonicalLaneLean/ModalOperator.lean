import BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean.DiagonalizableAlgebra

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure ModalOperatorPackage (A : DiagonalizableBooleanAlgebra) where
  diamondMonotone : ∀ x y : A.carrier, x ≤ y → A.diamond x ≤ A.diamond y
  diamondJoin : ∀ x y : A.carrier, A.diamond (A.join x y) = A.join (A.diamond x) (A.diamond y)
  diamondBot : A.diamond A.bot = A.bot
  boxMonotone : ∀ x y : A.carrier, x ≤ y → A.box x ≤ A.box y
  boxMeet : ∀ x y : A.carrier, A.box (A.meet x y) = A.meet (A.box x) (A.box y)
  boxTop : A.box A.top = A.top
  diamondBoxDualityConsistent : ∀ x : A.carrier, A.diamond x = A.compl (A.box (A.compl x))
  additionalProperties : Prop

def ModalOperatorPackageClosed {A : DiagonalizableBooleanAlgebra} (M : ModalOperatorPackage A) : Prop :=
  M.diamondMonotone ∧ M.diamondJoin ∧ M.diamondBot ∧
  M.boxMonotone ∧ M.boxMeet ∧ M.boxTop ∧
  M.diamondBoxDualityConsistent ∧ M.additionalProperties

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse