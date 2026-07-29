import HautevilleHouse.LoopSpacesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

def ConstrainedLoopSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loop_spaces_endgame (A : AdmissibleClass) :
    ConstrainedLoopSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse