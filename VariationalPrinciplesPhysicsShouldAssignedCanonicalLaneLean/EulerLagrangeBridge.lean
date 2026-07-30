import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ActionFunctionalClosed (A.object : ActionFunctionalPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse