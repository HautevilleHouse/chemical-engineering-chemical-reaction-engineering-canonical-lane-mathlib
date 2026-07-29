import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ReactorDesignPackage (K : ReactionKineticsPackage) where
  batchReactorModel : Prop
  continuousStirredTankModel : Prop
  plugFlowReactorModel : Prop
  heatAndMassTransfer : Prop
  conversionYield : Prop

structure ReactorDesignEvidence {K : ReactionKineticsPackage} (R : ReactorDesignPackage K) where
  batchReactorModelClosed : R.batchReactorModel
  continuousStirredTankModelClosed : R.continuousStirredTankModel
  plugFlowReactorModelClosed : R.plugFlowReactorModel
  heatAndMassTransferClosed : R.heatAndMassTransfer
  conversionYieldClosed : R.conversionYield

def ReactorDesignClosed {K : ReactionKineticsPackage} (R : ReactorDesignPackage K) : Prop :=
  R.batchReactorModel ∧ R.continuousStirredTankModel ∧ R.plugFlowReactorModel ∧ R.heatAndMassTransfer ∧ R.conversionYield

theorem reactor_design_closed_from_evidence
    {K : ReactionKineticsPackage} (R : ReactorDesignPackage K)
    (E : ReactorDesignEvidence R) : ReactorDesignClosed R := by
  exact And.intro E.batchReactorModelClosed
    (And.intro E.continuousStirredTankModelClosed
      (And.intro E.plugFlowReactorModelClosed
        (And.intro E.heatAndMassTransferClosed E.conversionYieldClosed)))

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse