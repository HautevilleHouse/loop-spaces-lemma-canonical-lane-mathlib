import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure PathConnectedSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  pathConnected : Prop

structure LoopSpaceObject where
  baseSpace : PathConnectedSpace
  basepoint : baseSpace.carrier
  loopSpace : Type v
  loopTopology : TopologicalSpace loopSpace
  fundamentalGroup : Type w
  groupStructure : Prop
  conclusion : Prop

structure LoopSpaceAdmittedObject where
  object : LoopSpaceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def loopSpaceWitnessClosed (O : LoopSpaceAdmittedObject) : Prop :=
  O.object.conclusion

def admittedClosure (A : LoopSpaceAdmittedObject) : Prop :=
  loopSpaceWitnessClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse