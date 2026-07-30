import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure ActionFunctionalPackage where
  actionIntegrand : Type u
  domainIntegrationForm : Type v
  eulerLagrangeEquations : Prop
  noetherConservationLaws : Prop
  boundaryTermAccounted : Prop

structure ActionFunctionalEvidence (A : ActionFunctionalPackage) where
  eulerLagrangeEquationsClosed : A.eulerLagrangeEquations
  noetherConservationLawsClosed : A.noetherConservationLaws
  boundaryTermAccountedClosed : A.boundaryTermAccounted

def ActionFunctionalClosed (A : ActionFunctionalPackage) : Prop :=
  A.eulerLagrangeEquations ∧ A.noetherConservationLaws ∧ A.boundaryTermAccounted

theorem action_functional_closed_from_evidence (A : ActionFunctionalPackage)
    (E : ActionFunctionalEvidence A) : ActionFunctionalClosed A := by
  exact And.intro E.eulerLagrangeEquationsClosed
    (And.intro E.noetherConservationLawsClosed E.boundaryTermAccountedClosed)

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse