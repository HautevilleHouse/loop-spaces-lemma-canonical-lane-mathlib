import LoopSpacesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LoopSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  basepoint : carrier

structure LoopSpaceAdmittedObject where
  space : LoopSpace
  topologicalGroup : Prop
  basedLoopSpace : Prop
  homotopyGroup : Nat
  trivialLowDim : Prop
  conclusion : trivialLowDim

structure LoopSpaceEndgameState where
  object : LoopSpaceAdmittedObject

def LoopSpaceWitnessClosed (O : LoopSpaceAdmittedObject) : Prop :=
  O.trivialLowDim

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse
