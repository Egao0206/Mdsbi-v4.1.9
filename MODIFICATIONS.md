# Project1 Modifications to MDSBI v4.1.9

## Upstream

- Original author: Eric M. Dunham
- Original version: MDSBI v4.1.9
- Original distribution: https://pangea.stanford.edu/~edunham/codes/mdsbi/

## Fault-Fluid Extensions

The Project1 source adds the following capabilities to the original MDSBI v4.1.9 implementation:

- Dilatancy parameters `beta`, `deltaD`, and `Phi` in the thermal-pressurization input structure.
- A slip-dependent dilatancy source term in the fault-normal pore-pressure evolution.
- Coupling of local slip and slip rate to the thermal-pressurization and dilatancy update.
- A time-weakening nucleation option based on radial distance for bilateral 3D rupture initiation.

Representative TP-only and TP-dilatancy inputs are located in `problems/thermal/` and listed in the repository README.

