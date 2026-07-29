import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ThermodynamicPropertiesPackage where
  enthalpy : Type u
  entropy : Type v
  gibbsFreeEnergy : Type w
  equilibriumConstant : Prop
  gibbsEnergyMinimized : Prop
  enthalpySatisfies : Prop

structure ThermodynamicPropertiesEvidence (T : ThermodynamicPropertiesPackage) where
  equilibriumConstantClosed : T.equilibriumConstant
  gibbsEnergyMinimizedClosed : T.gibbsEnergyMinimized
  enthalpySatisfiesClosed : T.enthalpySatisfies

def ThermodynamicPropertiesClosed (T : ThermodynamicPropertiesPackage) : Prop :=
  T.equilibriumConstant ∧ T.gibbsEnergyMinimized ∧ T.enthalpySatisfies

theorem thermodynamic_properties_closed_from_evidence (T : ThermodynamicPropertiesPackage)
    (E : ThermodynamicPropertiesEvidence T) : ThermodynamicPropertiesClosed T := by
  exact And.intro E.equilibriumConstantClosed
    (And.intro E.gibbsEnergyMinimizedClosed E.enthalpySatisfiesClosed)

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse