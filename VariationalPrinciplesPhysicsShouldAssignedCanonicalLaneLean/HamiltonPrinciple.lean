import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.EulerLagrangeEquations

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure HamiltonPrinciplePackage {E : EulerLagrangeEquationsPackage} where
  phaseSpace : Type u
  hamiltonian : Type v
  canonicalEquations : Prop
  poissonBracketStructure : Prop
  symplecticForm : Prop

structure HamiltonPrincipleEvidence {E : EulerLagrangeEquationsPackage} (H : HamiltonPrinciplePackage E) where
  canonicalEquationsClosed : H.canonicalEquations
  poissonBracketStructureClosed : H.poissonBracketStructure
  symplecticFormClosed : H.symplecticForm

def HamiltonPrincipleClosed {E : EulerLagrangeEquationsPackage} (H : HamiltonPrinciplePackage E) : Prop :=
  H.canonicalEquations ∧ H.poissonBracketStructure ∧ H.symplecticForm

theorem hamilton_principle_closed_from_evidence {E : EulerLagrangeEquationsPackage} (H : HamiltonPrinciplePackage E) (Ev : HamiltonPrincipleEvidence H) :
    HamiltonPrincipleClosed H := by
  exact And.intro Ev.canonicalEquationsClosed (And.intro Ev.poissonBracketStructureClosed Ev.symplecticFormClosed)

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse