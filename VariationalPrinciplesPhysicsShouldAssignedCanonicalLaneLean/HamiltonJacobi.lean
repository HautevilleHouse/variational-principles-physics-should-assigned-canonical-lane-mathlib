import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssigned.NoetherConservation

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure HamiltonJacobiPackage {L : LagrangianDensityPackage} {E : EulerLagrangeFlowPackage L} {N : NoetherConservationPackage L E} where
  phaseSpace : Type u
  hamiltonian : phaseSpace → ℝ
  principalFunction : ℝ × ℝ × L.configSpace → ℝ
  hamiltonJacobiEquation : (ℝ × L.configSpace → ℝ) → Prop

structure HamiltonJacobiEvidence {L : LagrangianDensityPackage} {E : EulerLagrangeFlowPackage L} {N : NoetherConservationPackage L E} (H : HamiltonJacobiPackage L E N) where
  hamiltonianDerived : Prop
  principalFunctionSatisfiesHJE : H.hamiltonJacobiEquation (Function.uncurry (λ (t : ℝ) (q : L.configSpace) => H.principalFunction (0, t, q)))

def HamiltonJacobiClosed {L : LagrangianDensityPackage} {E : EulerLagrangeFlowPackage L} {N : NoetherConservationPackage L E} (H : HamiltonJacobiPackage L E N) : Prop :=
  H.hamiltonJacobiEquation (Function.uncurry (λ (t : ℝ) (q : L.configSpace) => H.principalFunction (0, t, q)))

theorem hamilton_jacobi_closed_from_evidence {L : LagrangianDensityPackage} {E : EulerLagrangeFlowPackage L} {N : NoetherConservationPackage L E} (H : HamiltonJacobiPackage L E N) (Ev : HamiltonJacobiEvidence H) : HamiltonJacobiClosed H := by
  exact Ev.principalFunctionSatisfiesHJE

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse