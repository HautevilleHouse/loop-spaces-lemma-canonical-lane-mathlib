import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopSpacesLemmaCanonicalLaneLean.HurewiczBridge

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

def gateClosed (A : LoopSpaceAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : LoopSpaceAdmittedObject) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedLoopSpacesClosure (A : LoopSpaceAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loop_spaces_endgame (A : LoopSpaceAdmittedObject) :
    ConstrainedLoopSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse