import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure AdmissibleClass where
  object : VariationalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VariationalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse
