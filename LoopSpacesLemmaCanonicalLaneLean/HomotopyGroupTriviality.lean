import LoopSpacesLemmaCanonicalLaneLean.LoopSpaceStructure
import Mathlib.Topology.Homotopy.HomotopyGroup

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure HomotopyGroupTriviality {L : LoopSpaceStructure} where
  n : ℕ
  homotopyGroup : Type
  Trivial : Prop
  truncationMap : Type
  isomorphism : Prop
  TrivialTerm : Trivial

structure HomotopyGroupTrivialityEvidence {L : LoopSpaceStructure}
    (H : HomotopyGroupTriviality L) where
  nClosed : H.n = 0 ∨ H.n = 1 ∨ H.n = 2
  TrivialClosed : H.Trivial
  isomorphismClosed : H.isomorphism

def HomotopyGroupTrivialityClosed {L : LoopSpaceStructure}
    (H : HomotopyGroupTriviality L) : Prop :=
  H.Trivial ∧ H.isomorphism

theorem homotopy_group_triviality_closed_from_evidence
    {L : LoopSpaceStructure} (H : HomotopyGroupTriviality L)
    (E : HomotopyGroupTrivialityEvidence H) : HomotopyGroupTrivialityClosed H := by
  exact And.intro E.TrivialClosed E.isomorphismClosed

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse
