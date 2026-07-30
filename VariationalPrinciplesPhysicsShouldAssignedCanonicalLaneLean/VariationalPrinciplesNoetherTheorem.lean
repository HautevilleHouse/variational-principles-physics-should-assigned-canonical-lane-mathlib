import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.VariationalPrinciplesAdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure NoetherTheoremPackage (A : VariationalPrincipleObject) where
  lagrangianSymmetry : Prop
  conservedCurrent : Prop
  currentConservationEquation : Prop
  noetherTheoremProof : A.symmetries → conservedCurrent

structure NoetherEvidence {A : VariationalPrincipleObject} (N : NoetherTheoremPackage A) where
  lagrangianSymmetryClosed : N.lagrangianSymmetry
  conservedCurrentClosed : N.conservedCurrent
  currentConservationEquationClosed : N.currentConservationEquation

def NoetherClosed {A : VariationalPrincipleObject} (N : NoetherTheoremPackage A) : Prop :=
  N.lagrangianSymmetry ∧ N.conservedCurrent ∧ N.currentConservationEquation

theorem noether_closed_from_evidence {A : VariationalPrincipleObject}
    (N : NoetherTheoremPackage A) (E : NoetherEvidence N) : NoetherClosed N := by
  exact And.intro E.lagrangianSymmetryClosed (And.intro E.conservedCurrentClosed E.currentConservationEquationClosed)

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse