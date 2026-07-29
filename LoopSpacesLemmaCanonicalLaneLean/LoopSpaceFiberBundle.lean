import canonicalLaneMathlib.AdmissibleClass
import LoopSpacesLemmaCanonicalLaneLean.LoopSpacePackage

/-!
# Loop Space as Fiber Bundle
-/

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopSpaceFiberBundle where
  totalSpace : Type u
  baseSpace : Type v
  fiber : baseSpace → Type w
  projection : totalSpace → baseSpace
  localTrivialization : Prop
  homotopyLifting : Prop

def FiberBundleClosed (B : LoopSpaceFiberBundle) : Prop :=
  B.localTrivialization ∧ B.homotopyLifting

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse