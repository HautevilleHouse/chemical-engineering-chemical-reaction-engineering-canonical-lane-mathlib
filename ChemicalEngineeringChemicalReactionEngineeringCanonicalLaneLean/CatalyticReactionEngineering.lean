import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure CatalyticReactionPackage (K : ReactionKineticsPackage) where
  adsorptionModel : Prop
  surfaceReactionMechanism : Prop
  desorptionModel : Prop
  catalystActivity : Prop
  siteBalance : Prop

structure CatalyticReactionEvidence {K : ReactionKineticsPackage} (C : CatalyticReactionPackage K) where
  adsorptionModelClosed : C.adsorptionModel
  surfaceReactionMechanismClosed : C.surfaceReactionMechanism
  desorptionModelClosed : C.desorptionModel
  catalystActivityClosed : C.catalystActivity
  siteBalanceClosed : C.siteBalance

def CatalyticReactionClosed {K : ReactionKineticsPackage} (C : CatalyticReactionPackage K) : Prop :=
  C.adsorptionModel ∧ C.surfaceReactionMechanism ∧ C.desorptionModel ∧ C.catalystActivity ∧ C.siteBalance

theorem catalytic_reaction_closed_from_evidence
    {K : ReactionKineticsPackage} (C : CatalyticReactionPackage K)
    (E : CatalyticReactionEvidence C) : CatalyticReactionClosed C := by
  exact And.intro E.adsorptionModelClosed
    (And.intro E.surfaceReactionMechanismClosed
      (And.intro E.desorptionModelClosed
        (And.intro E.catalystActivityClosed E.siteBalanceClosed)))

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse