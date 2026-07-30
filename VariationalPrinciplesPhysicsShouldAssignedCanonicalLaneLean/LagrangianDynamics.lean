import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean

structure LagrangianSystem where
  configurationSpace : Type u
  lagrangian : (configurationSpace → ℝ) → (configurationSpace → ℝ) → configurationSpace → ℝ
  smoothness : Prop
  positiveDefinite : Prop
  smoothnessTerm : smoothness
  positiveDefiniteTerm : positiveDefinite

structure LagrangianEvidence (L : LagrangianSystem) where
  smoothnessClosed : L.smoothness
  positiveDefiniteClosed : L.positiveDefinite

def LagrangianClosed (L : LagrangianSystem) : Prop :=
  L.smoothness ∧ L.positiveDefinite

theorem lagrangian_closed_from_evidence (L : LagrangianSystem) (E : LagrangianEvidence L) : LagrangianClosed L := by
  exact And.intro E.smoothnessClosed E.positiveDefiniteClosed

end VariationalPrinciplesPhysicsShouldAssignedCanonicalLaneLean
end HautevilleHouse