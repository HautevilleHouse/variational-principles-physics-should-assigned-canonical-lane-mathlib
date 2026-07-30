import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssigned.HamiltonJacobi

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure VariationalAdmittedObject where
  lagrangianPackage : LagrangianDensityPackage
  eulerLagrangePackage : EulerLagrangeFlowPackage lagrangianPackage
  noetherPackage : NoetherConservationPackage lagrangianPackage eulerLagrangePackage
  hamiltonJacobiPackage : HamiltonJacobiPackage lagrangianPackage eulerLagrangePackage noetherPackage
  conclusion : LagrangianDensityClosed lagrangianPackage ∧ EulerLagrangeFlowClosed eulerLagrangePackage ∧ NoetherConservationClosed noetherPackage ∧ HamiltonJacobiClosed hamiltonJacobiPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : VariationalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse