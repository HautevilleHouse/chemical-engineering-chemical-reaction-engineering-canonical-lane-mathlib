import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure ChemicalReactionEngineeringAdmittedObject where
  reactionNetwork : Type
  rateConstants : Type
  equilibriumData : Type
  conclusion : Prop

structure ChemicalReactionEngineeringAdmissibleClass where
  object : ChemicalReactionEngineeringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ChemicalReactionEngineeringWitnessClosed (O : ChemicalReactionEngineeringAdmittedObject) : Prop :=
  O.conclusion

def admittedClosure (A : ChemicalReactionEngineeringAdmissibleClass) : Prop :=
  ChemicalReactionEngineeringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse