import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.LagrangianDynamics

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure EulerLagrangePackage (L : LagrangianSystem) where
  actionFunctional : Prop
  stationarityCondition : Prop
  boundaryTerms : Prop
  uniquenessOfExtremals : Prop

structure EulerLagrangeEvidence (L : LagrangianSystem) (E : EulerLagrangePackage L) where
  actionFunctionalClosed : E.actionFunctional
  stationarityConditionClosed : E.stationarityCondition
  boundaryTermsClosed : E.boundaryTerms
  uniquenessOfExtremalsClosed : E.uniquenessOfExtremals

def EulerLagrangeClosed (L : LagrangianSystem) (E : EulerLagrangePackage L) : Prop :=
  E.actionFunctional ∧ E.stationarityCondition ∧ E.boundaryTerms ∧ E.uniquenessOfExtremals

theorem euler_lagrange_closed_from_evidence (L : LagrangianSystem) (E : EulerLagrangePackage L) (Ev : EulerLagrangeEvidence L E) : EulerLagrangeClosed L E := by
  exact And.intro Ev.actionFunctionalClosed (And.intro Ev.stationarityConditionClosed (And.intro Ev.boundaryTermsClosed Ev.uniquenessOfExtremalsClosed))

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse