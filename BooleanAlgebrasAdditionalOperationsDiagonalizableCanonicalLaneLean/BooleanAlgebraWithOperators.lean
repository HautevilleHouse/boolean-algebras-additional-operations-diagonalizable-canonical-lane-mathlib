import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure BooleanAlgebraWithOperators where
  carrier : Type u
  top : carrier
  bot : carrier
  meet : carrier → carrier → carrier
  join : carrier → carrier → carrier
  compl : carrier → carrier
  diamond : carrier → carrier  -- modal operator
  box : carrier → carrier     -- dual operator
  diamondJoinDistributive : Prop
  boxMeetDistributive : Prop
  diamondBot : Prop
  boxTop : Prop

structure BAOEvidence (B : BooleanAlgebraWithOperators) where
  diamondJoinDistributiveClosed : B.diamondJoinDistributive
  boxMeetDistributiveClosed : B.boxMeetDistributive
  diamondBotClosed : B.diamondBot
  boxTopClosed : B.boxTop

def BAOClosed (B : BooleanAlgebraWithOperators) : Prop :=
  B.diamondJoinDistributive ∧ B.boxMeetDistributive ∧ B.diamondBot ∧ B.boxTop

theorem bao_closed_from_evidence (B : BooleanAlgebraWithOperators) (E : BAOEvidence B) : BAOClosed B := by
  exact And.intro E.diamondJoinDistributiveClosed
    (And.intro E.boxMeetDistributiveClosed
      (And.intro E.diamondBotClosed E.boxTopClosed))

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse