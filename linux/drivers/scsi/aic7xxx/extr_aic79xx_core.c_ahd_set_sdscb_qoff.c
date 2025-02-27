
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_CCHAN_MSK ;
 scalar_t__ SDSCB_QOFF ;
 int ahd_outb (struct ahd_softc*,scalar_t__,int) ;

__attribute__((used)) static void
ahd_set_sdscb_qoff(struct ahd_softc *ahd, u_int value)
{
 AHD_ASSERT_MODES(ahd, AHD_MODE_CCHAN_MSK, AHD_MODE_CCHAN_MSK);
 ahd_outb(ahd, SDSCB_QOFF, value & 0xFF);
 ahd_outb(ahd, SDSCB_QOFF+1, (value >> 8) & 0xFF);
}
