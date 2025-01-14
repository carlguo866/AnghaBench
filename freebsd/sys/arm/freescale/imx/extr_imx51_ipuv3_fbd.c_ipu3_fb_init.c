
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int fb_width; int fb_height; int fb_stride; int fb_size; intptr_t fb_vbase; intptr_t fb_pbase; int fb_bpp; int fb_depth; } ;
struct ipu3sc_softc {TYPE_1__ sc_info; } ;


 int CPMEM_OFFSET (int ,int,int,int) ;
 int IMX_IPU_DP1 ;
 int IPUV3_READ (struct ipu3sc_softc*,int ,int ) ;
 int IPUV3_WRITE (struct ipu3sc_softc*,int ,int ,int) ;
 int M_DEVBUF ;
 int M_ZERO ;
 int PAGE_SIZE ;
 scalar_t__ contigmalloc (int,int ,int ,int ,int ,int ,int ) ;
 int cpmem ;
 int printf (char*,int,int,int) ;
 scalar_t__ vtophys (intptr_t) ;

__attribute__((used)) static void
ipu3_fb_init(struct ipu3sc_softc *sc)
{
 uint64_t w0sh96;
 uint32_t w1sh96;



 w0sh96 = IPUV3_READ(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 0, 16));
 w0sh96 <<= 32;
 w0sh96 |= IPUV3_READ(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 0, 12));

 sc->sc_info.fb_width = ((w0sh96 >> 29) & 0x1fff) + 1;
 sc->sc_info.fb_height = ((w0sh96 >> 42) & 0x0fff) + 1;


 w1sh96 = IPUV3_READ(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 1, 12));
 sc->sc_info.fb_stride = ((w1sh96 >> 6) & 0x3fff) + 1;

 printf("%dx%d [%d]\n", sc->sc_info.fb_width, sc->sc_info.fb_height,
     sc->sc_info.fb_stride);
 sc->sc_info.fb_size = sc->sc_info.fb_height * sc->sc_info.fb_stride;

 sc->sc_info.fb_vbase = (intptr_t)contigmalloc(sc->sc_info.fb_size,
     M_DEVBUF, M_ZERO, 0, ~0, PAGE_SIZE, 0);
 sc->sc_info.fb_pbase = (intptr_t)vtophys(sc->sc_info.fb_vbase);


 IPUV3_WRITE(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 1, 0),
     (((uint32_t)sc->sc_info.fb_pbase >> 3) |
     (((uint32_t)sc->sc_info.fb_pbase >> 3) << 29)) & 0xffffffff);

 IPUV3_WRITE(sc, cpmem, CPMEM_OFFSET(IMX_IPU_DP1, 23, 1, 4),
     (((uint32_t)sc->sc_info.fb_pbase >> 3) >> 3) & 0xffffffff);


 sc->sc_info.fb_bpp = sc->sc_info.fb_depth = sc->sc_info.fb_stride /
     sc->sc_info.fb_width * 8;
}
