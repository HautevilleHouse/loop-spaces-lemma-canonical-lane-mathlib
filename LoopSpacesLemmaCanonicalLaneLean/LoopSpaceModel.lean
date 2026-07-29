import HautevilleHouse.LoopSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopSpaceModel (X : Type) where
  basepoint : X
  loopSpace : Type
  loopTopology : TopologicalSpace loopSpace
  composition : loopSpace → loopSpace → loopSpace
  identity : loopSpace
  inversion : loopSpace → loopSpace
  groupLaws : Prop
  compositionAssociative : ∀ (a b c : loopSpace), composition (composition a b) c = composition a (composition b c)
  identityLeft : ∀ (a : loopSpace), composition identity a = a
  identityRight : ∀ (a : loopSpace), composition a identity = a
  inversionLeft : ∀ (a : loopSpace), composition (inversion a) a = identity
  inversionRight : ∀ (a : loopSpace), composition a (inversion a) = identity

structure LoopSpaceAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  pathConnected : Prop
  simplyConnected : Prop
  loopModel : LoopSpaceModel space
  conclusion : simplyConnected

def LoopSpaceWitnessClosed (O : LoopSpaceAdmittedObject) : Prop :=
  O.simplyConnected

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse