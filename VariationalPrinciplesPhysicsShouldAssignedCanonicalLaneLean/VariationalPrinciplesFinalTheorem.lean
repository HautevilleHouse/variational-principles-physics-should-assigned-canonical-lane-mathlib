import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.VariationalPrinciplesGateLemmas

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

def ConstrainedVariationalPrinciplesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variational_principles_endgame (A : AdmissibleClass) :
    ConstrainedVariationalPrinciplesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse