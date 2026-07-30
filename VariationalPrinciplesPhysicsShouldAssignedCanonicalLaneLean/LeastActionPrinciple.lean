import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure LeastActionPrinciplePackage where
  configurationSpace : Type u
  trajectorySpace : Type v
  actionFunctional : Type w
  stationaryActionCondition : Prop
  extremalTrajectories : Prop

structure LeastActionPrincipleEvidence (L : LeastActionPrinciplePackage) where
  stationaryActionConditionClosed : L.stationaryActionCondition
  extremalTrajectoriesClosed : L.extremalTrajectories

def LeastActionPrincipleClosed (L : LeastActionPrinciplePackage) : Prop :=
  L.stationaryActionCondition ∧ L.extremalTrajectories

theorem least_action_principle_closed_from_evidence (L : LeastActionPrinciplePackage) (E : LeastActionPrincipleEvidence L) :
    LeastActionPrincipleClosed L := by
  exact And.intro E.stationaryActionConditionClosed E.extremalTrajectoriesClosed

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse