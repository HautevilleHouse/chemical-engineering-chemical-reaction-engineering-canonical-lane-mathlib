import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  equilibriumConstant : Prop
  gibbsFreeEnergy : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  vanHoffEquation : Prop
  leChatelierPrinciple : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  equilibriumConstantClosed : T.equilibriumConstant
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  vanHoffEquationClosed : T.vanHoffEquation
  leChatelierPrincipleClosed : T.leChatelierPrinciple

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.equilibriumConstant ∧ T.gibbsFreeEnergy ∧ T.enthalpyChange ∧ T.entropyChange ∧ T.vanHoffEquation ∧ T.leChatelierPrinciple

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact And.intro E.equilibriumConstantClosed
    (And.intro E.gibbsFreeEnergyClosed
      (And.intro E.enthalpyChangeClosed
        (And.intro E.entropyChangeClosed
          (And.intro E.vanHoffEquationClosed E.leChatelierPrincipleClosed))))

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse