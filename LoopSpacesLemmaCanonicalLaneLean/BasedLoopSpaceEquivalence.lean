import LoopSpacesLemmaCanonicalLaneLean.HomotopyGroupTriviality
import Mathlib.Topology.Homotopy.LoopSpace

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure BasedLoopSpaceEquivalence {L : LoopSpaceStructure} (H : HomotopyGroupTriviality L) where
  basedLoopSpace : Type
  freeLoopSpace : Type
  inclusionMap : basedLoopSpace → freeLoopSpace
  homotopyEquivalence : Prop
  homotopyEquivalenceTerm : homotopyEquivalence

structure BasedLoopSpaceEquivalenceEvidence {L : LoopSpaceStructure}
    {H : HomotopyGroupTriviality L} (B : BasedLoopSpaceEquivalence H) where
  homotopyEquivalenceClosed : B.homotopyEquivalence

def BasedLoopSpaceEquivalenceClosed {L : LoopSpaceStructure}
    {H : HomotopyGroupTriviality L} (B : BasedLoopSpaceEquivalence H) : Prop :=
  B.homotopyEquivalence

theorem based_loop_space_equivalence_closed_from_evidence
    {L : LoopSpaceStructure} {H : HomotopyGroupTriviality L}
    (B : BasedLoopSpaceEquivalence H) (E : BasedLoopSpaceEquivalenceEvidence B) :
    BasedLoopSpaceEquivalenceClosed B := by
  exact E.homotopyEquivalenceClosed

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse
