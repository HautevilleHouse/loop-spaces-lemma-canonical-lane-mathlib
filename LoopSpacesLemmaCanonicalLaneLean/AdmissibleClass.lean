import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopSpace where
  base : Type
  loops : Type
  groupStructure : Type

structure AdmittedLoopObject where
  space : LoopSpace
  simplyConnected : Prop
  pathConnected : Prop
  groupIsAbelian : Prop
  conclusion : groupIsAbelian

structure AdmissibleClass where
  object : AdmittedLoopObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse