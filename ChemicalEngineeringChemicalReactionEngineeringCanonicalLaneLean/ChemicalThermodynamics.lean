import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ChemicalThermodynamicsPackage where
  enthalpyOfReaction : Prop
  entropyChange : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  vanHoffEquation : Prop

structure ChemicalThermodynamicsEvidence (T : ChemicalThermodynamicsPackage) where
  enthalpyOfReactionClosed : T.enthalpyOfReaction
  entropyChangeClosed : T.entropyChange
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  vanHoffEquationClosed : T.vanHoffEquation

def ChemicalThermodynamicsClosed (T : ChemicalThermodynamicsPackage) : Prop :=
  T.enthalpyOfReaction ∧ T.entropyChange ∧ T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.vanHoffEquation

theorem chemical_thermodynamics_closed_from_evidence
    (T : ChemicalThermodynamicsPackage) (E : ChemicalThermodynamicsEvidence T) :
    ChemicalThermodynamicsClosed T := by
  exact And.intro E.enthalpyOfReactionClosed
    (And.intro E.entropyChangeClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.equilibriumConstantClosed E.vanHoffEquationClosed)))

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse