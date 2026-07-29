import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopSpacesLemmaTheorem where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  loopSpacesConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : LoopSpacesLemmaTheorem :=
  { sourceKey := "loop-spaces-lemma-canonical-lane",
    theoremName := "Loop Spaces Lemma",
    theoremObject := "AdmissibleLoopSpacesObject",
    classicalBoundary := "unrestricted classical boundary carried",
    loopSpacesConstrainedStatement := "loop-spaces-constrained theorem certificate internalized through admissible class",
    certificateLane := "loop_spaces_constrained",
    carriedRemainder := "classical source boundary carried by theoremBoundaryOpen"
  }

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse