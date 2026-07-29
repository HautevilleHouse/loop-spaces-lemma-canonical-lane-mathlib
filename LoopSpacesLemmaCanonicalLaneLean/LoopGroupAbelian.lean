import HautevilleHouse.LoopSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure LoopGroupAbelianPackage where
  fundamentalGroup : Type
  groupOperation : fundamentalGroup → fundamentalGroup → fundamentalGroup
  identityElement : fundamentalGroup
  inverse : fundamentalGroup → fundamentalGroup
  abelianProperty : Prop
  groupAxioms : Prop
  abelianProof : abelianProperty ∧ groupAxioms

theorem loop_group_abelian_package_provided (L : LoopGroupAbelianPackage) : L.abelianProperty := by
  exact L.abelianProof.1

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse