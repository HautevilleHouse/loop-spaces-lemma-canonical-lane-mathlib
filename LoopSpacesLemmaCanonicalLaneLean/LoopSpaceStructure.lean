import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  basePoint : space
  loopSpaceType : Type v
  loopTopology : TopologicalSpace loopSpaceType
  concatenation : loopSpaceType → loopSpaceType → loopSpaceType
  constantLoop : loopSpaceType
  inverseLoop : loopSpaceType → loopSpaceType
  concatenationAssociative : Prop
  constantLoopIdentity : Prop
  inverseProperty : Prop

structure LoopSpaceEvidence (L : LoopSpacePackage) where
  concatenationAssociativeClosed : L.concatenationAssociative
  constantLoopIdentityClosed : L.constantLoopIdentity
  inversePropertyClosed : L.inverseProperty

def LoopSpaceClosed (L : LoopSpacePackage) : Prop :=
  L.concatenationAssociative ∧ L.constantLoopIdentity ∧ L.inverseProperty

theorem loop_space_closed_from_evidence (L : LoopSpacePackage) (E : LoopSpaceEvidence L) :
    LoopSpaceClosed L := by
  exact And.intro E.concatenationAssociativeClosed
    (And.intro E.constantLoopIdentityClosed E.inversePropertyClosed)

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse
