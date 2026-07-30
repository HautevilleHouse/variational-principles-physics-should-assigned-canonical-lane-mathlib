import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure LagrangianConstraintPackage where
  constraintMap : Type u
  lagrangeMultiplier : Type v
  constrainedEOM : Prop
  holonomicConstraint : Prop
  nonholonomicConstraint : Prop

structure LagrangianConstraintEvidence (L : LagrangianConstraintPackage) where
  constrainedEOMClosed : L.constrainedEOM
  holonomicConstraintClosed : L.holonomicConstraint
  nonholonomicConstraintClosed : L.nonholonomicConstraint

def LagrangianConstraintClosed (L : LagrangianConstraintPackage) : Prop :=
  L.constrainedEOM ∧ L.holonomicConstraint ∧ L.nonholonomicConstraint

theorem lagrangian_constraint_closed_from_evidence (L : LagrangianConstraintPackage) (E : LagrangianConstraintEvidence L) :
    LagrangianConstraintClosed L := by
  exact And.intro E.constrainedEOMClosed
    (And.intro E.holonomicConstraintClosed E.nonholonomicConstraintClosed)

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse