import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.EulerLagrangeEquations

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure HamiltonianSystem (L : LagrangianSystem) where
  phaseSpace : Type u
  hamiltonian : (phaseSpace → ℝ) → (phaseSpace → ℝ) → phaseSpace → ℝ
  legendreTransform : Prop
  canonicalEquations : Prop
  legendreTransformTerm : legendreTransform
  canonicalEquationsTerm : canonicalEquations

structure HamiltonianEvidence (L : LagrangianSystem) (H : HamiltonianSystem L) where
  legendreTransformClosed : H.legendreTransform
  canonicalEquationsClosed : H.canonicalEquations

def HamiltonianClosed (L : LagrangianSystem) (H : HamiltonianSystem L) : Prop :=
  H.legendreTransform ∧ H.canonicalEquations

theorem hamiltonian_closed_from_evidence (L : LagrangianSystem) (H : HamiltonianSystem L) (Ev : HamiltonianEvidence L H) : HamiltonianClosed L H := by
  exact And.intro Ev.legendreTransformClosed Ev.canonicalEquationsClosed

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse