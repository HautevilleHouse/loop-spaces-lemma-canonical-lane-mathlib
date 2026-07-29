import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopSpaceFibrationPackage where
  totalSpace : Type u
  baseSpace : Type v
  fiberSpace : Type w
  projectionMap : totalSpace → baseSpace
  fiberBundleCondition : Prop
  homotopyLiftingProperty : Prop
  longExactSequence : Prop

structure LoopSpaceFibrationEvidence (F : LoopSpaceFibrationPackage) where
  fiberBundleConditionClosed : F.fiberBundleCondition
  homotopyLiftingPropertyClosed : F.homotopyLiftingProperty
  longExactSequenceClosed : F.longExactSequence

def LoopSpaceFibrationClosed (F : LoopSpaceFibrationPackage) : Prop :=
  F.fiberBundleCondition ∧ F.homotopyLiftingProperty ∧ F.longExactSequence

theorem loop_space_fibration_closed_from_evidence (F : LoopSpaceFibrationPackage)
    (E : LoopSpaceFibrationEvidence F) : LoopSpaceFibrationClosed F := by
  exact And.intro E.fiberBundleConditionClosed
    (And.intro E.homotopyLiftingPropertyClosed E.longExactSequenceClosed)

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse
