import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopSpacesLemmaCanonicalLaneLean.LoopSpacesBasic

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure HurewiczApplied {O : LoopSpaceAdmittedObject} where
  firstNonzeroHomotopyGroup : Nat
  hurewiczHomomorphism : Prop
  targetHomologyGroup : Type u
  isomorphism : Prop
  hurewiczWitness : isomorphism

def bridgeClosed (A : LoopSpaceAdmittedObject) : Prop :=
  loopSpaceWitnessClosed A

theorem bridge_from_admissible_class (A : LoopSpaceAdmittedObject) :
    bridgeClosed A := by
  exact A.object.conclusion

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse