import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure FieldTheoryPrinciplePackage where
  fieldConfiguration : Type u
  lagrangianDensity : fieldConfiguration → ℝ
  actionFunctionalOverSpacetime : (ℝ⁴ → fieldConfiguration) → ℝ
  eulerLagrangeFieldEquation : Prop

structure FieldTheoryPrincipleEvidence (F : FieldTheoryPrinciplePackage) where
  lagrangianDensitySmooth : Prop
  actionFunctionalOverSpacetimeDefined : Prop
  eulerLagrangeFieldEquationClosed : F.eulerLagrangeFieldEquation

def FieldTheoryPrincipleClosed (F : FieldTheoryPrinciplePackage) : Prop :=
  F.eulerLagrangeFieldEquation

theorem field_theory_principle_closed_from_evidence (F : FieldTheoryPrinciplePackage) (E : FieldTheoryPrincipleEvidence F) :
    FieldTheoryPrincipleClosed F := by
  exact E.eulerLagrangeFieldEquationClosed

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse