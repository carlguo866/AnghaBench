
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_softc {int jme_flags; int jme_dev; } ;
typedef int device_t ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int DELAY (int) ;
 int JME_FLAG_FPGA ;
 int JME_PHY_TIMEOUT ;
 int JME_SMI ;
 int SMI_DATA_MASK ;
 int SMI_DATA_SHIFT ;
 int SMI_OP_EXECUTE ;
 int SMI_OP_WRITE ;
 int SMI_PHY_ADDR (int) ;
 int SMI_REG_ADDR (int) ;
 struct jme_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
jme_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct jme_softc *sc;
 int i;

 sc = device_get_softc(dev);


 if ((sc->jme_flags & JME_FLAG_FPGA) != 0 && phy == 0)
  return (0);

 CSR_WRITE_4(sc, JME_SMI, SMI_OP_WRITE | SMI_OP_EXECUTE |
     ((val << SMI_DATA_SHIFT) & SMI_DATA_MASK) |
     SMI_PHY_ADDR(phy) | SMI_REG_ADDR(reg));
 for (i = JME_PHY_TIMEOUT; i > 0; i--) {
  DELAY(1);
  if (((val = CSR_READ_4(sc, JME_SMI)) & SMI_OP_EXECUTE) == 0)
   break;
 }

 if (i == 0)
  device_printf(sc->jme_dev, "phy write timeout : %d\n", reg);

 return (0);
}
