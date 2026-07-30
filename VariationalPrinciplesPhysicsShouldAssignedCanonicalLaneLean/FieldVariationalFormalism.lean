import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean.EulerLagrangeEquations

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure FieldVariationalFormalismPackage {E : EulerLagrangeEquationsPackage} where
  fieldAction : Type u
  fieldEquations : Prop
  stressEnergyTensor : Type v
  conservationLaws : Prop

structure FieldVariationalFormalismEvidence {E : EulerLagrangeEquationsPackage} (F : FieldVariationalFormalismPackage E) where
  fieldEquationsClosed : F.fieldEquations
  conservationLawsClosed : F.conservationLaws

def FieldVariationalFormalismClosed {E : EulerLagrangeEquationsPackage} (F : FieldVariationalFormalismPackage E) : Prop :=
  F.fieldEquations ∧ F.conservationLaws

theorem field_variational_formalism_closed_from_evidence {E : EulerLagrangeEquationsPackage} (F : FieldVariationalFormalismPackage E) (Ev : FieldVariationalFormalismEvidence F) :
    FieldVariationalFormalismClosed F := by
  exact And.intro Ev.fieldEquationsClosed Ev.conservationLawsClosed

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse