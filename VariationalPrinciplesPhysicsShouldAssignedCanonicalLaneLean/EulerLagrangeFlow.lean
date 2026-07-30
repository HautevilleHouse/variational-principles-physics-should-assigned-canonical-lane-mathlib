import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssigned.LagrangianDensity

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure EulerLagrangeFlowPackage {L : LagrangianDensityPackage} where
  eulerLagrangeEquation : (ℝ → L.configSpace) → Prop
  extremalSolutions : Set (ℝ → L.configSpace)
  flowMap : ℝ → (ℝ → L.configSpace) → (ℝ → L.configSpace)
  solutionUniqueness : Prop

structure EulerLagrangeFlowEvidence {L : LagrangianDensityPackage} (E : EulerLagrangeFlowPackage L) where
  extremalSolutionsClosed : E.eulerLagrangeEquation
  flowPreservesExtremals : Prop
  solutionUniquenessClosed : E.solutionUniqueness

def EulerLagrangeFlowClosed {L : LagrangianDensityPackage} (E : EulerLagrangeFlowPackage L) : Prop :=
  E.solutionUniqueness

theorem euler_lagrange_flow_closed_from_evidence {L : LagrangianDensityPackage} (E : EulerLagrangeFlowPackage L) (Ev : EulerLagrangeFlowEvidence E) : EulerLagrangeFlowClosed E := by
  exact Ev.solutionUniquenessClosed

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse