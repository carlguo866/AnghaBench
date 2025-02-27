
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E1H (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 scalar_t__ GRCBASE_MISC ;
 scalar_t__ MISC_REGISTERS_RESET_REG_1_CLEAR ;
 int MISC_REGISTERS_RESET_REG_1_RST_HC ;
 int MISC_REGISTERS_RESET_REG_1_RST_PXP ;
 int MISC_REGISTERS_RESET_REG_1_RST_PXPV ;
 scalar_t__ MISC_REGISTERS_RESET_REG_1_SET ;
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ;
 int MISC_REGISTERS_RESET_REG_2_PGLC ;
 int MISC_REGISTERS_RESET_REG_2_RST_ATC ;
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ;
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC1 ;
 int MISC_REGISTERS_RESET_REG_2_RST_EMAC0 ;
 int MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE ;
 int MISC_REGISTERS_RESET_REG_2_RST_EMAC1 ;
 int MISC_REGISTERS_RESET_REG_2_RST_EMAC1_HARD_CORE ;
 int MISC_REGISTERS_RESET_REG_2_RST_GRC ;
 int MISC_REGISTERS_RESET_REG_2_RST_MCP_N_HARD_CORE_RST_B ;
 int MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_CMN_CORE ;
 int MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_CMN_CPU ;
 int MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_REG_HARD_CORE ;
 int MISC_REGISTERS_RESET_REG_2_RST_MISC_CORE ;
 int MISC_REGISTERS_RESET_REG_2_RST_PCI_MDIO ;
 int MISC_REGISTERS_RESET_REG_2_RST_RBCN ;
 scalar_t__ MISC_REGISTERS_RESET_REG_2_SET ;
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ;
 int MISC_REGISTERS_RESET_REG_2_UMAC1 ;
 int MISC_REGISTERS_RESET_REG_2_XMAC ;
 int MISC_REGISTERS_RESET_REG_2_XMAC_SOFT ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int mb () ;
 int wmb () ;

__attribute__((used)) static void
bxe_process_kill_chip_reset(struct bxe_softc *sc,
                            uint8_t global)
{
    uint32_t not_reset_mask1, reset_mask1, not_reset_mask2, reset_mask2;
    uint32_t global_bits2, stay_reset2;





    global_bits2 =
        MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_CMN_CPU |
        MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_CMN_CORE;







    not_reset_mask1 =
        MISC_REGISTERS_RESET_REG_1_RST_HC |
        MISC_REGISTERS_RESET_REG_1_RST_PXPV |
        MISC_REGISTERS_RESET_REG_1_RST_PXP;

    not_reset_mask2 =
        MISC_REGISTERS_RESET_REG_2_RST_PCI_MDIO |
        MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE |
        MISC_REGISTERS_RESET_REG_2_RST_EMAC1_HARD_CORE |
        MISC_REGISTERS_RESET_REG_2_RST_MISC_CORE |
        MISC_REGISTERS_RESET_REG_2_RST_RBCN |
        MISC_REGISTERS_RESET_REG_2_RST_GRC |
        MISC_REGISTERS_RESET_REG_2_RST_MCP_N_RESET_REG_HARD_CORE |
        MISC_REGISTERS_RESET_REG_2_RST_MCP_N_HARD_CORE_RST_B |
        MISC_REGISTERS_RESET_REG_2_RST_ATC |
        MISC_REGISTERS_RESET_REG_2_PGLC |
        MISC_REGISTERS_RESET_REG_2_RST_BMAC0 |
        MISC_REGISTERS_RESET_REG_2_RST_BMAC1 |
        MISC_REGISTERS_RESET_REG_2_RST_EMAC0 |
        MISC_REGISTERS_RESET_REG_2_RST_EMAC1 |
        MISC_REGISTERS_RESET_REG_2_UMAC0 |
        MISC_REGISTERS_RESET_REG_2_UMAC1;





    stay_reset2 =
        MISC_REGISTERS_RESET_REG_2_XMAC |
        MISC_REGISTERS_RESET_REG_2_XMAC_SOFT;


    reset_mask1 = 0xffffffff;

    if (CHIP_IS_E1(sc))
        reset_mask2 = 0xffff;
    else if (CHIP_IS_E1H(sc))
        reset_mask2 = 0x1ffff;
    else if (CHIP_IS_E2(sc))
        reset_mask2 = 0xfffff;
    else
        reset_mask2 = 0x3ffffff;


    if (!global)
        reset_mask2 &= ~global_bits2;
    REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
           reset_mask2 & (~not_reset_mask2));

    REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR,
           reset_mask1 & (~not_reset_mask1));

    mb();
    wmb();

    REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
           reset_mask2 & (~stay_reset2));

    mb();
    wmb();

    REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_SET, reset_mask1);
    wmb();
}
