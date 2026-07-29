import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure WhiteheadTheoremPackage where
  spaceX : Type u
  spaceY : Type v
  mapF : spaceX → spaceY
  weakHomotopyEquivalence : Prop
  inducesIsomorphismsOnHomotopyGroups : Prop
  homotopyEquivalence : Prop
  simplyConnectedBoth : Prop

structure WhiteheadTheoremEvidence (W : WhiteheadTheoremPackage) where
  weakHomotopyEquivalenceClosed : W.weakHomotopyEquivalence
  inducesIsomorphismsOnHomotopyGroupsClosed : W.inducesIsomorphismsOnHomotopyGroups
  homotopyEquivalenceClosed : W.homotopyEquivalence
  simplyConnectedBothClosed : W.simplyConnectedBoth

def WhiteheadTheoremClosed (W : WhiteheadTheoremPackage) : Prop :=
  W.weakHomotopyEquivalence ∧ W.inducesIsomorphismsOnHomotopyGroups ∧
  W.homotopyEquivalence ∧ W.simplyConnectedBoth

theorem whitehead_theorem_closed_from_evidence (W : WhiteheadTheoremPackage)
    (E : WhiteheadTheoremEvidence W) : WhiteheadTheoremClosed W := by
  exact And.intro E.weakHomotopyEquivalenceClosed
    (And.intro E.inducesIsomorphismsOnHomotopyGroupsClosed
      (And.intro E.homotopyEquivalenceClosed E.simplyConnectedBothClosed))

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse
