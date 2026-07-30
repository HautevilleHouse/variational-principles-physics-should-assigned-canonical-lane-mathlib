import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.LagrangianDynamics

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure NoetherPackage (L : LagrangianSystem) where
  symmetryGroup : Type u
  symmetryAction : Prop
  conservedQuantity : Prop
  invarianceImpliesConservation : Prop
  symmetryActionTerm : symmetryAction
  conservedQuantityTerm : conservedQuantity
  invarianceImpliesConservationTerm : invarianceImpliesConservation

structure NoetherEvidence (L : LagrangianSystem) (N : NoetherPackage L) where
  symmetryActionClosed : N.symmetryAction
  conservedQuantityClosed : N.conservedQuantity
  invarianceImpliesConservationClosed : N.invarianceImpliesConservation

def NoetherClosed (L : LagrangianSystem) (N : NoetherPackage L) : Prop :=
  N.symmetryAction ∧ N.conservedQuantity ∧ N.invarianceImpliesConservation

theorem noether_closed_from_evidence (L : LagrangianSystem) (N : NoetherPackage L) (Ev : NoetherEvidence L N) : NoetherClosed L N := by
  exact And.intro Ev.symmetryActionClosed (And.intro Ev.conservedQuantityClosed Ev.invarianceImpliesConservationClosed)

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse