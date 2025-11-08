!     globals_modules.F90
      module steps_module
      implicit none

!---- number of beta-meshpoints
      integer :: n_beta = 16

      real(kind=8) :: step, beta_initial, beta_final

!     Global Index and steps by rank
      integer :: iglobal, istep, steps_per_rank, remainder


  
      end module steps_module


      module globals_energy
      implicit none

!     Variables de energía total
      real(kind=8) :: etot    = 0.0d0
      real(kind=8) :: etot_v  = 0.0d0

!     Variables de entropía
      real(kind=8) :: entropy   = 0.0d0
      real(kind=8) :: entropy_v = 0.0d0

      end module globals_energy