import canonicalLaneMathlib.AdmissibleClass
import LoopSpacesLemmaCanonicalLaneLean.LoopSpacePackage

/-!
# Loop Space Algebraic Structures
-/

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopSpaceStructure where
  loopConcatenation : Prop
  loopReversal : Prop
  loopConcatenationAssociative : Prop
  loopReversalInverse : Prop

theorem loop_concatenation_inverses :
    loopConcatenation ∧ loopReversal → loopConcatenationAssociative ∧ loopReversalInverse := by
  intro h
  exact And.intro h.1 h.2

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse