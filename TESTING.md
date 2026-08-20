# Build Verification

The Project1 source snapshot was compiled successfully on 20 August 2026 with GNU Fortran, Open MPI, FFTW3, and LAPACK on macOS.

From `src/`, the local verification command was:

```bash
make clean
make F95=mpif90 \
  LIBS='-L/opt/homebrew/opt/fftw/lib -lfftw3 -llapack' \
  INCL='-I/opt/homebrew/opt/fftw/include'
```

The two inputs under `problems/Project1_TP_only/` and `problems/Project1_TP_Dilatancy/` are production-scale examples. They were inspected for the intended TP-only and TP-dilatancy parameter settings but were not run to completion during this packaging check.
