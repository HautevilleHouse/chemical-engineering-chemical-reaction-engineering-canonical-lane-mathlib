import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Float
  initialConcentrations : List Float
  finalConcentrations : List Float
  conversionRatio : Float
  temperature : Float
  pressure : Float

def chemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.conversionRatio > 0

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse