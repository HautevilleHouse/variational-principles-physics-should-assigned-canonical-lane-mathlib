import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.VariationalPrinciplesNoetherTheorem

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure EulerLagrangePackage (A : VariationalPrincipleObject) where
  stationarityCondition : Prop
  boundaryTerms : Prop
  fundamentalLemma : Prop
  eulerLagrangeDerivation : A.eulerLagrangeEquations → stationarityCondition

structure EulerLagrangeEvidence {A : VariationalPrincipleObject}
    (E : EulerLagrangePackage A) where
  stationarityConditionClosed : E.stationarityCondition
  boundaryTermsClosed : E.boundaryTerms
  fundamentalLemmaClosed : E.fundamentalLemma

def EulerLagrangeClosed {A : VariationalPrincipleObject}
    (E : EulerLagrangePackage A) : Prop :=
  E.stationarityCondition ∧ E.boundaryTerms ∧ E.fundamentalLemma

theorem euler_lagrange_closed_from_evidence {A : VariationalPrincipleObject}
    (E : EulerLagrangePackage A) (Ev : EulerLagrangeEvidence E) : EulerLagrangeClosed E := by
  exact And.intro Ev.stationarityConditionClosed (And.intro Ev.boundaryTermsClosed Ev.fundamentalLemmaClosed)

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse