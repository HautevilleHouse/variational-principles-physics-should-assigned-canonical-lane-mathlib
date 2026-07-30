import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure FieldTheoryVariationalPackage where
  fieldConfiguration : Type u
  lagrangianDensity : Type v
  eulerLagrangeFieldEquations : Prop
  stressEnergyTensor : Prop
  noetherTheoremForFields : Prop

structure FieldTheoryVariationalEvidence (F : FieldTheoryVariationalPackage) where
  eulerLagrangeFieldEquationsClosed : F.eulerLagrangeFieldEquations
  stressEnergyTensorClosed : F.stressEnergyTensor
  noetherTheoremForFieldsClosed : F.noetherTheoremForFields

def FieldTheoryVariationalClosed (F : FieldTheoryVariationalPackage) : Prop :=
  F.eulerLagrangeFieldEquations ∧ F.stressEnergyTensor ∧ F.noetherTheoremForFields

theorem field_theory_variational_closed_from_evidence (F : FieldTheoryVariationalPackage)
    (E : FieldTheoryVariationalEvidence F) : FieldTheoryVariationalClosed F := by
  exact And.intro E.eulerLagrangeFieldEquationsClosed
    (And.intro E.stressEnergyTensorClosed E.noetherTheoremForFieldsClosed)

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse