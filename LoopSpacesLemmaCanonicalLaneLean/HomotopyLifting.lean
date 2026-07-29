import HautevilleHouse.LoopSpacesLemmaCanonicalLaneLean.LoopSpaceModel

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure HomotopyLiftingProperty {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (Lx : LoopSpaceModel X) (Ly : LoopSpaceModel Y) where
  inducedMap : Lx.loopSpace → Ly.loopSpace
  respectsComposition : inducedMap ∘ Lx.composition = Ly.composition ∘ (λ p q => (inducedMap p, inducedMap q))
  respectsIdentity : inducedMap Lx.identity = Ly.identity
  respectsInversion : inducedMap ∘ Lx.inversion = Ly.inversion ∘ inducedMap
  continuity : Continuous inducedMap

theorem induced_map_is_group_homomorphism {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (Lx : LoopSpaceModel X) (Ly : LoopSpaceModel Y)
  (H : HomotopyLiftingProperty f Lx Ly) :
  (∀ a b : Lx.loopSpace, H.inducedMap (Lx.composition a b) = Ly.composition (H.inducedMap a) (H.inducedMap b)) :=
  λ a b => by
    have := congrArg (· (a, b)) H.respectsComposition
    simpa using this

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse