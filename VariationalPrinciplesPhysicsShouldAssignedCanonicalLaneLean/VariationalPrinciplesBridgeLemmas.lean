import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.VariationalPrinciplesAdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VariationalPrincipleObject.conclusion A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse