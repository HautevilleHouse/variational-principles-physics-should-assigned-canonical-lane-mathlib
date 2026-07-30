import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure NoetherConservationPackage where
  symmetryGroup : Type u
  conservedCurrent : Type v
  currentConservationLaw : Prop
  chargeDefined : Prop
  symmetryActionClosed : Prop

structure NoetherConservationEvidence (N : NoetherConservationPackage) where
  currentConservationLawClosed : N.currentConservationLaw
  chargeDefinedClosed : N.chargeDefined
  symmetryActionClosedClosed : N.symmetryActionClosed

def NoetherConservationClosed (N : NoetherConservationPackage) : Prop :=
  N.currentConservationLaw ∧ N.chargeDefined ∧ N.symmetryActionClosed

theorem noether_conservation_closed_from_evidence (N : NoetherConservationPackage)
    (E : NoetherConservationEvidence N) : NoetherConservationClosed N := by
  exact And.intro E.currentConservationLawClosed
    (And.intro E.chargeDefinedClosed E.symmetryActionClosedClosed)

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse