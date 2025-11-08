!============================================================
! parametros_mod.F90
!============================================================
      module parameters
      implicit none

!---- maximal number for GFV
      integer, parameter :: IGFV = 500

!---- number of r-meshpoints (4n+1 points)
      real*8, parameter :: RMAX = 25.0d0
      integer, parameter :: MR = 301

!---- number of q-meshpoints (4n+1 points)
      real*8, parameter :: QMAX = 6.0d0
      integer, parameter :: MQ = 49

!---- number of gauss-meshpoints
      integer, parameter :: NGH = 50
      integer, parameter :: NGL = 50
      integer, parameter :: NGLEG = 18

!---- maximal oscillator quantum number for fermions
      integer, parameter :: N0FX = 28
      integer, parameter :: nxx  = N0FX/2

!---- maximal number of (k,parity)-blocks
      integer, parameter :: NBX = 2*N0FX+1

!---- max. number of all levels for protons or neutrons
      integer, parameter :: NTX1 = 2*(nxx+1)*(nxx+2)*(2*nxx+3)/3-1
      integer, parameter :: NTX2 = (2*nxx+1)*(nxx+1)
      integer, parameter :: NTX3 = 2*nxx*(nxx+1)*(2*nxx+1)/3
      integer, parameter :: NTX  = NTX1+NTX2+NTX3-1

!---- max. number of eigenstates for protons or neutrons      
      integer, parameter :: KX1 = (nxx+1)**2
      integer, parameter :: KX2 = 2*nxx*(nxx+1)*(2*nxx+1)/3
      integer, parameter :: KX3 = nxx*(nxx+1)
      integer, parameter :: KX4 = KX1+KX2+KX3
      integer, parameter :: KX  = NTX-KX4

!---- max. nz, nr, ml quantum numbers
      integer, parameter :: NZX = N0FX+1
      integer, parameter :: NRX = nxx
      integer, parameter :: MLX = N0FX+1

!---- maximal dimension F/G of one k-block
      integer, parameter :: NFX = ((N0FX+2)*(N0FX+3))/2
      integer, parameter :: NGX = (nxx+1)*(nxx+2)
      integer, parameter :: NDX = NGX

!---- oscillator quantum number for bosons
      integer, parameter :: N0BX = 28
      integer, parameter :: nbxx = N0BX/2
      integer, parameter :: NOX  = (nbxx+1)*(nbxx+2)/2
      integer, parameter :: NOX1 = (N0FX+1)*(N0FX+2)/2

!---- derived constants
      integer, parameter :: NGH2   = NGH+NGH
      integer, parameter :: NB2X   = NBX+NBX
      integer, parameter :: NHX    = NFX+NGX
      integer, parameter :: NDDX   = NDX*NDX
      integer, parameter :: NHBX   = NHX+NHX
      integer, parameter :: NFFX   = NFX*NFX
      integer, parameter :: NFGX   = NFX*NGX
      integer, parameter :: NHHX   = NHX*NHX
      integer, parameter :: MG     = (NGH+1)*(NGL+1)
      integer, parameter :: N02    = 2*N0FX
      integer, parameter :: NNNX   = (N0FX+1)*(N0FX+1)

!---- working space
      integer, parameter :: MVX1    = ( (nxx+1)**4 + (nxx+1)**2 ) / 2
      integer, parameter :: MVX2a   = nxx*(nxx+1)*(2*nxx+1)
      integer, parameter :: MVX2    = MVX2a*(3*nxx**2+3*nxx-1)/15
      integer, parameter :: MVX3    = nxx*(nxx+1)*(2*nxx+1)/2
      integer, parameter :: MVX4    = nxx**2*(nxx+1)**2/2
      integer, parameter :: MVX5    = nxx*(nxx+1)/2
      integer, parameter :: MVX     = MVX1+MVX2+MVX3+MVX4+MVX5

!---- some sums
      integer, parameter :: MSUM1   = nxx*(nxx+1)/2
      integer, parameter :: MSUM2   = nxx*(nxx+1)*(2*nxx+1)/6
      integer, parameter :: MSUM3   = nxx**2*(nxx+1)**2/4
      integer, parameter :: MSUM4   = nxx*(nxx+1)*(2*nxx+1)*(3*nxx**2+3*nxx-1)/30
      integer, parameter :: MVTX1   = 6+7*nxx+4*MSUM4+16*MSUM3+27*MSUM2+22*MSUM1
      integer, parameter :: MVTX2   = nxx+4*MSUM4+8*MSUM3+9*MSUM2+5*MSUM1
      integer, parameter :: MVTX    = MVTX1+MVTX2

      end module parameters
