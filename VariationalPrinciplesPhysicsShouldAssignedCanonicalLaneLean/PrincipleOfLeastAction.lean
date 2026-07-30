import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.EulerLagrangeEquations

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure LeastActionPackage (L : LagrangianSystem) where
  actionFunctionalDefined : Prop
  extremalPathExists : Prop
  actionMinimizingProperty : Prop
  connectionToEulerLagrange : Prop
  actionFunctionalDefinedTerm : actionFunctionalDefined
  extremalPathExistsTerm : extremalPathExists
  actionMinimizingPropertyTerm : actionMinimizingProperty
  connectionToEulerLagrangeTerm : connectionToEulerLagrange

structure LeastActionEvidence (L : LagrangianSystem) (P : LeastActionPackage L) where
  actionFunctionalDefinedClosed : P.actionFunctionalDefined
  extremalPathExistsClosed : P.extremalPathExists
  actionMinimizingPropertyClosed : P.actionMinimizingProperty
  connectionToEulerLagrangeClosed : P.connectionToEulerLagrange

def LeastActionClosed (L : LagrangianSystem) (P : LeastActionPackage L) : Prop :=
  P.actionFunctionalDefined ∧ P.extremalPathExists ∧ P.actionMinimizingProperty ∧ P.connectionToEulerLagrange

theorem least_action_closed_from_evidence (L : LagrangianSystem) (P : LeastActionPackage L) (Ev : LeastActionEvidence L P) : LeastActionClosed L P := by
  exact And.intro Ev.actionFunctionalDefinedClosed (And.intro Ev.extremalPathExistsClosed (And.intro Ev.actionMinimizingPropertyClosed Ev.connectionToEulerLagrangeClosed))

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse