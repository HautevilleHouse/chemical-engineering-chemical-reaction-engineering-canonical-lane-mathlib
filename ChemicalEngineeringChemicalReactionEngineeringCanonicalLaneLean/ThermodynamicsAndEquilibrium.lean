import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  temperature : Type u
  pressure : Type v
  equilibriumConstant : Type w
  vanHoffEquation : Prop
  gibbsFreeEnergy : Prop
  reactionQuotient : Prop
  leChatelierPrinciple : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  vanHoffEquationClosed : T.vanHoffEquation
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  reactionQuotientClosed : T.reactionQuotient
  leChatelierPrincipleClosed : T.leChatelierPrinciple

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.vanHoffEquation ∧ T.gibbsFreeEnergy ∧ T.reactionQuotient ∧ T.leChatelierPrinciple

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact And.intro E.vanHoffEquationClosed
    (And.intro E.gibbsFreeEnergyClosed
      (And.intro E.reactionQuotientClosed E.leChatelierPrincipleClosed))

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse
