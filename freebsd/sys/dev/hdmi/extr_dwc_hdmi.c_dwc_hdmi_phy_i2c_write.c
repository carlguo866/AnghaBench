
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc_hdmi_softc {int dummy; } ;


 int HDMI_IH_I2CMPHY_STAT0 ;
 unsigned short HDMI_IH_I2CMPHY_STAT0_DONE ;
 unsigned short HDMI_IH_I2CMPHY_STAT0_ERROR ;
 int HDMI_PHY_I2CM_ADDRESS_ADDR ;
 int HDMI_PHY_I2CM_DATAO_0_ADDR ;
 int HDMI_PHY_I2CM_DATAO_1_ADDR ;
 int HDMI_PHY_I2CM_OPERATION_ADDR ;
 unsigned short HDMI_PHY_I2CM_OPERATION_ADDR_WRITE ;
 int WR1 (struct dwc_hdmi_softc*,int ,unsigned short) ;
 int dwc_hdmi_phy_wait_i2c_done (struct dwc_hdmi_softc*,int) ;

__attribute__((used)) static void
dwc_hdmi_phy_i2c_write(struct dwc_hdmi_softc *sc, unsigned short data,
    unsigned char addr)
{


 WR1(sc, HDMI_IH_I2CMPHY_STAT0,
     HDMI_IH_I2CMPHY_STAT0_DONE | HDMI_IH_I2CMPHY_STAT0_ERROR);
 WR1(sc, HDMI_PHY_I2CM_ADDRESS_ADDR, addr);
 WR1(sc, HDMI_PHY_I2CM_DATAO_1_ADDR, ((data >> 8) & 0xff));
 WR1(sc, HDMI_PHY_I2CM_DATAO_0_ADDR, ((data >> 0) & 0xff));
 WR1(sc, HDMI_PHY_I2CM_OPERATION_ADDR, HDMI_PHY_I2CM_OPERATION_ADDR_WRITE);
 dwc_hdmi_phy_wait_i2c_done(sc, 1000);
}
