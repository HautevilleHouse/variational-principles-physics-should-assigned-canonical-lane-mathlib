import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure StationaryActionPackage where
  actionVariation : Prop
  boundaryTerms : Prop
  principleOfStationaryAction : Prop
  noetherCurrent : Prop

structure StationaryActionEvidence (S : StationaryActionPackage) where
  actionVariationClosed : S.actionVariation
  boundaryTermsClosed : S.boundaryTerms
  principleOfStationaryActionClosed : S.principleOfStationaryAction
  noetherCurrentClosed : S.noetherCurrent

def StationaryActionClosed (S : StationaryActionPackage) : Prop :=
  S.actionVariation ∧ S.boundaryTerms ∧ S.principleOfStationaryAction ∧ S.noetherCurrent

theorem stationary_action_closed_from_evidence (S : StationaryActionPackage) (E : StationaryActionEvidence S) :
    StationaryActionClosed S := by
  exact And.intro E.actionVariationClosed
    (And.intro E.boundaryTermsClosed
      (And.intro E.principleOfStationaryActionClosed E.noetherCurrentClosed))

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse