import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure ActionVariablePackage where
  configurationSpace : Type u
  lagrangian : configurationSpace → ℝ
  actionFunctional : (ℝ → configurationSpace) → ℝ
  eulerLagrangeEquation : Prop

structure ActionVariableEvidence (A : ActionVariablePackage) where
  lagrangianSmooth : Prop
  actionFunctionalDefined : Prop
  eulerLagrangeEquationClosed : A.eulerLagrangeEquation

def ActionVariableClosed (A : ActionVariablePackage) : Prop :=
  A.eulerLagrangeEquation

theorem action_variable_closed_from_evidence (A : ActionVariablePackage) (E : ActionVariableEvidence A) :
    ActionVariableClosed A := by
  exact E.eulerLagrangeEquationClosed

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse