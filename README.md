# MDSBI v4.1.9 with Project1 Fault-Fluid Extensions

This repository is a research-use derivative of the Multi-Dimensional Spectral Boundary Integral Code (MDSBI) version 4.1.9 developed by Eric M. Dunham.

The original software attribution and research-use notice are provided in `Copyright`. The original MDSBI distribution and documentation are available from:

https://pangea.stanford.edu/~edunham/codes/mdsbi/

## Project1 Modifications

The Project1 version extends the original thermal-pressurization implementation by adding shear-induced dilatancy and its contribution to pore-pressure evolution. It also includes a time-weakening nucleation option used for bilateral 3D rupture simulations. A concise source-level summary is provided in `MODIFICATIONS.md`.

## Representative Examples

- TP-only: `problems/thermal/slipweak_3D_thermalpre.in`
- TP-dilatancy: `problems/thermal/slipweak_3D_thermalpre_dil.in`

These input files are representative examples of the 3D fault-fluid formulation used in the associated study. They are not intended to reproduce every model in the manuscript parameter sweeps.

## Attribution

Please cite the original MDSBI author and the associated Project1 study when using this modified version. See `UserGuide.pdf` and `Copyright` for the original software documentation and terms.
