import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesLemmaCanonicalLaneLean

structure HurewiczPackage where
  space : Type u
  topology : TopologicalSpace space
  basePoint : space
  homotopyGroups : ℕ → Type v
  homologyGroups : ℕ → Type w
  hurewiczHomomorphism : ∀ (n : ℕ), homotopyGroups n → homologyGroups n
  connectivityCondition : ℕ
  isomorphismUpToConnectivity : Prop
  naturalityProperty : Prop

structure HurewiczEvidence (H : HurewiczPackage) where
  isomorphismUpToConnectivityClosed : H.isomorphismUpToConnectivity
  naturalityPropertyClosed : H.naturalityProperty

def HurewiczClosed (H : HurewiczPackage) : Prop :=
  H.isomorphismUpToConnectivity ∧ H.naturalityProperty

theorem hurewicz_closed_from_evidence (H : HurewiczPackage) (E : HurewiczEvidence H) :
    HurewiczClosed H := by
  exact And.intro E.isomorphismUpToConnectivityClosed E.naturalityPropertyClosed

end LoopSpacesLemmaCanonicalLaneLean
end HautevilleHouse
