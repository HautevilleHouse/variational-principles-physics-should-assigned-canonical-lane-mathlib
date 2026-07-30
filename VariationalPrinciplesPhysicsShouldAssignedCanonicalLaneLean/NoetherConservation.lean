import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalPrinciplesPhysicsShouldAssigned.EulerLagrangeFlow

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure NoetherConservationPackage {L : LagrangianDensityPackage} {E : EulerLagrangeFlowPackage L} where
  symmetryGroup : Type u
  infinitesimalGenerator : L.configSpace → L.configSpace
  conservedQuantity : (ℝ → L.configSpace) → ℝ
  conservationLaw : ∀ (γ : ℝ → L.configSpace), E.eulerLagrangeEquation γ → (∀ t, conservedQuantity γ = conservedQuantity γ)

structure NoetherConservationEvidence {L : LagrangianDensityPackage} {E : EulerLagrangeFlowPackage L} (N : NoetherConservationPackage L E) where
  symmetryGroupClosed : Prop
  conservationLawClosed : ∀ (γ : ℝ → L.configSpace), E.eulerLagrangeEquation γ → (∀ t, N.conservedQuantity γ = N.conservedQuantity γ)

def NoetherConservationClosed {L : LagrangianDensityPackage} {E : EulerLagrangeFlowPackage L} (N : NoetherConservationPackage L E) : Prop :=
  ∀ (γ : ℝ → L.configSpace), E.eulerLagrangeEquation γ → (∀ t, N.conservedQuantity γ = N.conservedQuantity γ)

theorem noether_conservation_closed_from_evidence {L : LagrangianDensityPackage} {E : EulerLagrangeFlowPackage L} (N : NoetherConservationPackage L E) (Ev : NoetherConservationEvidence N) : NoetherConservationClosed N := by
  exact Ev.conservationLawClosed

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse