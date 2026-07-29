import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : Prop
  reactionOrder : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  rateExpression : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateConstantClosed : K.rateConstant
  reactionOrderClosed : K.reactionOrder
  activationEnergyClosed : K.activationEnergy
  temperatureDependenceClosed : K.temperatureDependence
  rateExpressionClosed : K.rateExpression

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateConstant ∧ K.reactionOrder ∧ K.activationEnergy ∧ K.temperatureDependence ∧ K.rateExpression

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage) (E : ReactionKineticsEvidence K) :
    ReactionKineticsClosed K := by
  exact And.intro E.rateConstantClosed
    (And.intro E.reactionOrderClosed
      (And.intro E.activationEnergyClosed
        (And.intro E.temperatureDependenceClosed E.rateExpressionClosed)))

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse