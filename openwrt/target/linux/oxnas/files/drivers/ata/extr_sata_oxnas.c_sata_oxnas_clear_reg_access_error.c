
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sata_oxnas_port_priv {int* port_base; } ;
struct ata_port {int port_no; struct sata_oxnas_port_priv* private_data; } ;


 int DPRINTK (char*,...) ;
 int INT_REG_ACCESS_ERR ;
 int INT_STATUS ;
 int ioread32 (int*) ;
 int iowrite32 (int,int*) ;

__attribute__((used)) static inline void sata_oxnas_clear_reg_access_error(struct ata_port *ap)
{
 struct sata_oxnas_port_priv *pd = ap->private_data;
 u32 *base = pd->port_base;
 u32 reg;

 reg = ioread32(base + INT_STATUS);

 DPRINTK("ENTER\n");
 if (reg & INT_REG_ACCESS_ERR) {
  DPRINTK("clearing register access error on port %d\n",
   ap->port_no);
  iowrite32(INT_REG_ACCESS_ERR, base + INT_STATUS);
 }
 reg = ioread32(base + INT_STATUS);
 if (reg & INT_REG_ACCESS_ERR)
  DPRINTK("register access error didn't clear\n");
}
