import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure BooleanAlgebraWithDiagonalizableOperator where
  carrier : Type
  top : carrier
  bot : carrier
  compl : carrier → carrier
  meet : carrier → carrier → carrier
  join : carrier → carrier → carrier
  box : carrier → carrier
  meet_comm : ∀ a b, meet a b = meet b a
  meet_assoc : ∀ a b c, meet (meet a b) c = meet a (meet b c)
  join_comm : ∀ a b, join a b = join b a
  join_assoc : ∀ a b c, join (join a b) c = join a (join b c)
  meet_join_absorp : ∀ a b, meet a (join a b) = a
  join_meet_absorp : ∀ a b, join a (meet a b) = a
  compl_meet : ∀ a, meet a (compl a) = bot
  compl_join : ∀ a, join a (compl a) = top
  top_ne_bot : top ≠ bot
  box_necessitation : ∀ a, a = top → box a = top
  box_normality : ∀ a b, box (join (compl a) b) ≤ join (compl (box a)) (box b)
  diagonalization : ∀ p, box (join (compl (box p)) p) ≤ box p

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse