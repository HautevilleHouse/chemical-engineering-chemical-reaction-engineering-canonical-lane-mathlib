import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean

structure MassTransferPackage where
  filmTheory : Prop
  penetrationTheory : Prop
  surfaceRenewalTheory : Prop
  diffusivity : Prop
  massTransferCoefficient : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  filmTheoryClosed : M.filmTheory
  penetrationTheoryClosed : M.penetrationTheory
  surfaceRenewalTheoryClosed : M.surfaceRenewalTheory
  diffusivityClosed : M.diffusivity
  massTransferCoefficientClosed : M.massTransferCoefficient

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.filmTheory ∧ M.penetrationTheory ∧ M.surfaceRenewalTheory ∧ M.diffusivity ∧ M.massTransferCoefficient

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage)
    (E : MassTransferEvidence M) : MassTransferClosed M := by
  exact And.intro E.filmTheoryClosed
    (And.intro E.penetrationTheoryClosed
      (And.intro E.surfaceRenewalTheoryClosed
        (And.intro E.diffusivityClosed E.massTransferCoefficientClosed)))

end ChemicalEngineeringChemicalReactionEngineeringCanonicalLaneLean
end HautevilleHouse