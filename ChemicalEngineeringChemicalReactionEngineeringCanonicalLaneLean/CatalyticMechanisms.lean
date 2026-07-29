import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure CatalyticMechanismPackage where
  catalyst : Type u
  activeSite : Type v
  adsoptionIsotherm : Prop
  langmuirHinshelwood : Prop
  rateDeterminingStep : Prop

structure CatalyticMechanismEvidence (C : CatalyticMechanismPackage) where
  adsoptionIsothermClosed : C.adsoptionIsotherm
  langmuirHinshelwoodClosed : C.langmuirHinshelwood
  rateDeterminingStepClosed : C.rateDeterminingStep

def CatalyticMechanismClosed (C : CatalyticMechanismPackage) : Prop :=
  C.adsoptionIsotherm ∧ C.langmuirHinshelwood ∧ C.rateDeterminingStep

theorem catalytic_mechanism_closed_from_evidence (C : CatalyticMechanismPackage)
    (E : CatalyticMechanismEvidence C) : CatalyticMechanismClosed C := by
  exact And.intro E.adsoptionIsothermClosed
    (And.intro E.langmuirHinshelwoodClosed E.rateDeterminingStepClosed)

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse
