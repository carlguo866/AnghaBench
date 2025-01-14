
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int CMNG_FNS_MINMAX ;
 int CMNG_FNS_NONE ;
 scalar_t__ IS_MF (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_get_cmng_fns_mode(struct bxe_softc *sc)
{
    if (CHIP_REV_IS_SLOW(sc)) {
        return (CMNG_FNS_NONE);
    }

    if (IS_MF(sc)) {
        return (CMNG_FNS_MINMAX);
    }

    return (CMNG_FNS_NONE);
}
