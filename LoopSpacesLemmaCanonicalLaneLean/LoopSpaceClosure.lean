import HautevilleHouse.LoopSpacesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

def ConstrainedLoopSpaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loop_space_endgame (A : AdmissibleClass) :
    ConstrainedLoopSpaceClosure A := by
  refine And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse