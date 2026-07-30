import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure LagrangianDensityPackage where
  configSpace : Type u
  tangentBundle : Type v
  lagrangianFunction : tangentBundle → ℝ
  timeInterval : ℝ × ℝ
  actionFunctional : (ℝ → configSpace) → ℝ
  stationarityCondition : Prop

structure LagrangianDensityEvidence (L : LagrangianDensityPackage) where
  differentiableLagrangian : Prop
  stationarityConditionClosed : L.stationarityCondition

def LagrangianDensityClosed (L : LagrangianDensityPackage) : Prop :=
  L.stationarityCondition

theorem lagrangian_density_closed_from_evidence (L : LagrangianDensityPackage) (E : LagrangianDensityEvidence L) : LagrangianDensityClosed L := by
  exact E.stationarityConditionClosed

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse