import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssigned

structure VariationalAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  variationalSystem : Prop
  stationaryPoint : Prop
  minimalAction : Prop
  conclusion : minimalAction

def VariationalWitnessClosed (O : VariationalAdmittedObject) : Prop :=
  O.minimalAction

end VariationalPrinciplesPhysicsShouldAssigned
end HautevilleHouse
