import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.VariationalPrinciplesEulerLagrange

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure ActionFunctionalPackage (A : VariationalPrincipleObject) where
  lagrangianDefined : Prop
  integrationDomain : Prop
  actionFunctionalWellDefined : Prop
  variationComputed : Prop
  variationMatchesEulerLagrange : A.actionFunctional → variationComputed

structure ActionFunctionalEvidence {A : VariationalPrincipleObject}
    (P : ActionFunctionalPackage A) where
  lagrangianDefinedClosed : P.lagrangianDefined
  integrationDomainClosed : P.integrationDomain
  actionFunctionalWellDefinedClosed : P.actionFunctionalWellDefined
  variationComputedClosed : P.variationComputed

def ActionFunctionalClosed {A : VariationalPrincipleObject}
    (P : ActionFunctionalPackage A) : Prop :=
  P.lagrangianDefined ∧ P.integrationDomain ∧ P.actionFunctionalWellDefined ∧ P.variationComputed

theorem action_functional_closed_from_evidence {A : VariationalPrincipleObject}
    (P : ActionFunctionalPackage A) (Ev : ActionFunctionalEvidence P) : ActionFunctionalClosed P := by
  exact And.intro Ev.lagrangianDefinedClosed
    (And.intro Ev.integrationDomainClosed
      (And.intro Ev.actionFunctionalWellDefinedClosed Ev.variationComputedClosed))

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse