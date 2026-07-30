import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.VariationalPrinciplesBridgeLemmas

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse