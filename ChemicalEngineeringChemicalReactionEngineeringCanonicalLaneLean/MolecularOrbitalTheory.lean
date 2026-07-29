import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure MolecularOrbitalPackage where
  basisSet : String
  hamiltonian : String
  electronConfiguration : String
  homoEnergy : Float
  lumoEnergy : Float
  bandGap : Float
  waveFunction : String

def molecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.bandGap > 0

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse