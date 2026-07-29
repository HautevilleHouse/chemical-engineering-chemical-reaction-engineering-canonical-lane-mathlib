import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReactionEngineerClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse