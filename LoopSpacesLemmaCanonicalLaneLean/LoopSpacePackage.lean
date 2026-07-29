import canonicalLaneMathlib.AdmissibleClass

/-!
# Loop Space Domain Package
-/

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopSpaceAdmittedObject where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  basePoint : baseSpace
  basedLoopSpace : Type v
  basedLoopTopology : TopologicalSpace basedLoopSpace
  basedLoopConnected : Prop
  basedLoopGroupoid : Prop
  conclusion : basedLoopConnected ∧ basedLoopGroupoid

def LoopSpaceWitnessClosed (O : LoopSpaceAdmittedObject) : Prop :=
  O.basedLoopConnected ∧ O.basedLoopGroupoid

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse