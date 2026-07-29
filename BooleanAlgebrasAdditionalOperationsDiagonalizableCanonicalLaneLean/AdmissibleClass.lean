import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean

structure BooleanAlgebraAdmittedObject where
  baseAlgebra : Type
  [booleanAlgebra : BooleanAlgebra baseAlgebra]
  operator : baseAlgebra → baseAlgebra
  diagonalizability : ∀ x, operator (operator x) = operator x
  conclusion : ∀ x, operator x = x

structure AdmissibleClass where
  object : BooleanAlgebraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BooleanAlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BooleanAlgebrasAdditionalOperationsDiagonalizableCanonicalLaneLean
end HautevilleHouse