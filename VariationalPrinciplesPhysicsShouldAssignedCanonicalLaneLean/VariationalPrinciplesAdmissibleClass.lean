import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure VariationalPrincipleObject where
  actionFunctional : Type u
  eulerLagrangeEquations : Prop
  symmetries : Prop
  conservedQuantities : Prop
  conclusion : symmetries → conservedQuantities

structure AdmissibleClass where
  object : VariationalPrincipleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VariationalPrincipleObject.conclusion A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse