import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure FundamentalGroupoidPackage where
  space : Type u
  topology : TopologicalSpace space
  basePoint : space
  pathCategory : Type v
  pathComposition : Type w
  objectSet : Set space
  morphismSet : Path space → Path space → Prop
  compositionLaw : Prop
  identityExists : Prop
  associativityHolds : Prop

structure FundamentalGroupoidEvidence (F : FundamentalGroupoidPackage) where
  compositionLawClosed : F.compositionLaw
  identityExistsClosed : F.identityExists
  associativityHoldsClosed : F.associativityHolds

def FundamentalGroupoidClosed (F : FundamentalGroupoidPackage) : Prop :=
  F.compositionLaw ∧ F.identityExists ∧ F.associativityHolds

theorem fundamental_groupoid_closed_from_evidence (F : FundamentalGroupoidPackage)
    (E : FundamentalGroupoidEvidence F) : FundamentalGroupoidClosed F := by
  exact And.intro E.compositionLawClosed
    (And.intro E.identityExistsClosed E.associativityHoldsClosed)

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse
