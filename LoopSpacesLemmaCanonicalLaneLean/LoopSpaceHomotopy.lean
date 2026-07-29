import HautevilleHouse.LoopSpacesLemmaCanonicalLaneLean.PathConnectedness

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopSpaceHomotopyPackage (P : PathConnectednessPackage) where
  loopSpace : Type
  homotopyGroup : ℕ → Type
  baseMap : loopSpace → homotopyGroup 0
  groupIsomorphism : homotopyGroup 1 ≃ P.space.loops
  homotopyLemma : Prop
  homotopyProof : homotopyLemma

theorem loop_space_homotopy_provided (P : PathConnectednessPackage) (H : LoopSpaceHomotopyPackage P) : H.homotopyLemma := by
  exact H.homotopyProof

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse