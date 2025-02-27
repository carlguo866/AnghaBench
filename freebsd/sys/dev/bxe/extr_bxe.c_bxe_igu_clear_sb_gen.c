
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {TYPE_1__* bar; } ;
struct TYPE_2__ {int handle; int tag; } ;


 size_t BAR0 ;
 int BLOGD (struct bxe_softc*,int ,char*,int,int,...) ;
 int BUS_SPACE_BARRIER_WRITE ;
 scalar_t__ CHIP_INT_MODE_IS_BC (struct bxe_softc*) ;
 int DBG_LOAD ;
 int DELAY (int) ;
 int IGU_CMD_E2_PROD_UPD_BASE ;
 int IGU_CTRL_CMD_TYPE_WR ;
 int IGU_CTRL_REG_ADDRESS_SHIFT ;
 int IGU_CTRL_REG_FID_SHIFT ;
 int IGU_CTRL_REG_TYPE_SHIFT ;
 int IGU_FID_ENCODE_IS_PF_SHIFT ;
 int IGU_REGULAR_BCLEANUP ;
 int IGU_REGULAR_CLEANUP_SET ;
 int IGU_REGULAR_CLEANUP_TYPE_SHIFT ;
 int IGU_REG_COMMAND_REG_32LSB_DATA ;
 int IGU_REG_COMMAND_REG_CTRL ;
 int IGU_REG_CSTORM_TYPE_0_SB_CLEANUP ;
 int IGU_USE_REGISTER_cstorm_type_0_sb_cleanup ;
 int REG_RD (struct bxe_softc*,int) ;
 int REG_WR (struct bxe_softc*,int,int) ;
 int bus_space_barrier (int ,int ,int ,int ,int ) ;
 int mb () ;

__attribute__((used)) static void
bxe_igu_clear_sb_gen(struct bxe_softc *sc,
                     uint8_t func,
                     uint8_t idu_sb_id,
                     uint8_t is_pf)
{
    uint32_t data, ctl, cnt = 100;
    uint32_t igu_addr_data = IGU_REG_COMMAND_REG_32LSB_DATA;
    uint32_t igu_addr_ctl = IGU_REG_COMMAND_REG_CTRL;
    uint32_t igu_addr_ack = IGU_REG_CSTORM_TYPE_0_SB_CLEANUP + (idu_sb_id/32)*4;
    uint32_t sb_bit = 1 << (idu_sb_id%32);
    uint32_t func_encode = func | (is_pf ? 1 : 0) << IGU_FID_ENCODE_IS_PF_SHIFT;
    uint32_t addr_encode = IGU_CMD_E2_PROD_UPD_BASE + idu_sb_id;


    if (CHIP_INT_MODE_IS_BC(sc)) {
        return;
    }

    data = ((IGU_USE_REGISTER_cstorm_type_0_sb_cleanup <<
             IGU_REGULAR_CLEANUP_TYPE_SHIFT) |
            IGU_REGULAR_CLEANUP_SET |
            IGU_REGULAR_BCLEANUP);

    ctl = ((addr_encode << IGU_CTRL_REG_ADDRESS_SHIFT) |
           (func_encode << IGU_CTRL_REG_FID_SHIFT) |
           (IGU_CTRL_CMD_TYPE_WR << IGU_CTRL_REG_TYPE_SHIFT));

    BLOGD(sc, DBG_LOAD, "write 0x%08x to IGU(via GRC) addr 0x%x\n",
            data, igu_addr_data);
    REG_WR(sc, igu_addr_data, data);

    bus_space_barrier(sc->bar[BAR0].tag, sc->bar[BAR0].handle, 0, 0,
                      BUS_SPACE_BARRIER_WRITE);
    mb();

    BLOGD(sc, DBG_LOAD, "write 0x%08x to IGU(via GRC) addr 0x%x\n",
            ctl, igu_addr_ctl);
    REG_WR(sc, igu_addr_ctl, ctl);

    bus_space_barrier(sc->bar[BAR0].tag, sc->bar[BAR0].handle, 0, 0,
                      BUS_SPACE_BARRIER_WRITE);
    mb();


    while (!(REG_RD(sc, igu_addr_ack) & sb_bit) && --cnt) {
        DELAY(20000);
    }

    if (!(REG_RD(sc, igu_addr_ack) & sb_bit)) {
        BLOGD(sc, DBG_LOAD,
              "Unable to finish IGU cleanup: "
              "idu_sb_id %d offset %d bit %d (cnt %d)\n",
              idu_sb_id, idu_sb_id/32, idu_sb_id%32, cnt);
    }
}
