import HautevilleHouse.ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ReactionEngineerEndgameState where
  object : AdmissibleClass

def reactionEngineerProjection : Projection ReactionEngineerEndgameState := {
  toFun := fun x => x
  idempotent := by
    intro x
    rfl
}

theorem reaction_engineer_projection_idempotent (x : ReactionEngineerEndgameState) :
    reactionEngineerProjection.toFun (reactionEngineerProjection.toFun x) = reactionEngineerProjection.toFun x := by
  exact reactionEngineerProjection.idempotent x

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse