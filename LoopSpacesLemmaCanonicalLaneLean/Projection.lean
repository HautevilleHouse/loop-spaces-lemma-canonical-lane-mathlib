import LoopSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def loopSpaceProjection : Projection LoopSpaceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem loop_space_projection_idempotent (x : LoopSpaceEndgameState) :
    loopSpaceProjection.toFun (loopSpaceProjection.toFun x) = loopSpaceProjection.toFun x := by
  exact loopSpaceProjection.idempotent x

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse
