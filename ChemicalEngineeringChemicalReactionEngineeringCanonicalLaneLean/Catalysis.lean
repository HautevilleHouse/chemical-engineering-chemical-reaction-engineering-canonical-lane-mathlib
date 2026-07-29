import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure CatalysisPackage where
  catalystType : Type u
  activeSite : Type v
  adsorptionModel : Prop
  surfaceReaction : Prop
  desorptionModel : Prop
  rateLimitingStepIdentified : Prop

structure CatalysisEvidence (C : CatalysisPackage) where
  adsorptionModelClosed : C.adsorptionModel
  surfaceReactionClosed : C.surfaceReaction
  desorptionModelClosed : C.desorptionModel
  rateLimitingStepIdentifiedClosed : C.rateLimitingStepIdentified

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.adsorptionModel ∧ C.surfaceReaction ∧ C.desorptionModel ∧ C.rateLimitingStepIdentified

theorem catalysis_closed_from_evidence (C : CatalysisPackage) (E : CatalysisEvidence C) :
    CatalysisClosed C := by
  exact And.intro E.adsorptionModelClosed
    (And.intro E.surfaceReactionClosed
      (And.intro E.desorptionModelClosed E.rateLimitingStepIdentifiedClosed))

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse