import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ThermodynamicsEquilibriumPackage {A : AdmissibleClass} (K : ReactionKineticsPackage A) where
  equilibriumConstant : Prop
  equilibriumConstantClosed : equilibriumConstant
  gibbsFreeEnergyRelation : Prop
  gibbsFreeEnergyRelationClosed : gibbsFreeEnergyRelation
  vanHoffEquation : Prop
  vanHoffEquationClosed : vanHoffEquation

def ThermodynamicsEquilibriumClosed {A : AdmissibleClass} {K : ReactionKineticsPackage A} (T : ThermodynamicsEquilibriumPackage K) : Prop :=
  T.equilibriumConstant ∧ T.gibbsFreeEnergyRelation ∧ T.vanHoffEquation

theorem thermodynamics_equilibrium_closed_from_evidence
    {A : AdmissibleClass} {K : ReactionKineticsPackage A} (T : ThermodynamicsEquilibriumPackage K) :
    ThermodynamicsEquilibriumClosed T := by
  exact And.intro T.equilibriumConstantClosed
    (And.intro T.gibbsFreeEnergyRelationClosed T.vanHoffEquationClosed)

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse