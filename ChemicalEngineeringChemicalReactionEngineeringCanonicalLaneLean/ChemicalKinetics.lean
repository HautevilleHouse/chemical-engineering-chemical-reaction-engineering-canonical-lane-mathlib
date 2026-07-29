import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ReactionRatePackage where
  species : Type u
  concentration : species -> Type v
  rateLaw : Prop
  activationEnergy : Prop
  rateConstantDetermined : Prop
  orderDetermined : Prop

structure ReactionRateEvidence (R : ReactionRatePackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  rateConstantDeterminedClosed : R.rateConstantDetermined
  orderDeterminedClosed : R.orderDetermined

def ReactionRateClosed (R : ReactionRatePackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.rateConstantDetermined ∧ R.orderDetermined

theorem reaction_rate_closed_from_evidence (R : ReactionRatePackage) (E : ReactionRateEvidence R) :
    ReactionRateClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.rateConstantDeterminedClosed E.orderDeterminedClosed))

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse