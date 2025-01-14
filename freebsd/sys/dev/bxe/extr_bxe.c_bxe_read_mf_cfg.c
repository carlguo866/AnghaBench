
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* mf_config; } ;
struct TYPE_5__ {TYPE_1__ mf_info; } ;
struct bxe_softc {int flags; TYPE_2__ devinfo; } ;
struct TYPE_6__ {int config; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int BXE_MF_FUNC_DIS ;
 scalar_t__ BXE_NOMCP (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_MODE_4_PORT (struct bxe_softc*) ;
 int DBG_LOAD ;
 int E1H_FUNC_MAX ;
 int FUNC_MF_CFG_FUNC_DISABLED ;
 int MFCFG_RD (struct bxe_softc*,int ) ;
 int SC_MAX_VN_NUM (struct bxe_softc*) ;
 int SC_PATH (struct bxe_softc*) ;
 int SC_PORT (struct bxe_softc*) ;
 size_t SC_VN (struct bxe_softc*) ;
 int VN_0 ;
 TYPE_3__* func_mf_config ;

__attribute__((used)) static void
bxe_read_mf_cfg(struct bxe_softc *sc)
{
    int n = (CHIP_IS_MODE_4_PORT(sc) ? 2 : 1);
    int abs_func;
    int vn;

    if (BXE_NOMCP(sc)) {
        return;
    }
    for (vn = VN_0; vn < SC_MAX_VN_NUM(sc); vn++) {
        abs_func = (n * (2 * vn + SC_PORT(sc)) + SC_PATH(sc));
        if (abs_func >= E1H_FUNC_MAX) {
            break;
        }
        sc->devinfo.mf_info.mf_config[vn] =
            MFCFG_RD(sc, func_mf_config[abs_func].config);
    }

    if (sc->devinfo.mf_info.mf_config[SC_VN(sc)] &
        FUNC_MF_CFG_FUNC_DISABLED) {
        BLOGD(sc, DBG_LOAD, "mf_cfg function disabled\n");
        sc->flags |= BXE_MF_FUNC_DIS;
    } else {
        BLOGD(sc, DBG_LOAD, "mf_cfg function enabled\n");
        sc->flags &= ~BXE_MF_FUNC_DIS;
    }
}
