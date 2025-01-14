
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_ssi_port {int pdev; } ;
struct omap_ssi_controller {scalar_t__ sys; TYPE_1__* gdd_trn; scalar_t__ gdd; } ;
struct hsi_port {int dummy; } ;
struct hsi_msg {scalar_t__ ttype; struct hsi_client* cl; } ;
struct hsi_controller {int dummy; } ;
struct hsi_client {int dummy; } ;
struct TYPE_2__ {struct hsi_msg* msg; } ;


 scalar_t__ HSI_MSG_READ ;
 scalar_t__ SSI_GDD_CCR_REG (unsigned int) ;
 scalar_t__ SSI_GDD_MPU_IRQ_ENABLE_REG ;
 scalar_t__ SSI_GDD_MPU_IRQ_STATUS_REG ;
 unsigned int SSI_MAX_GDD_LCH ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;
 struct hsi_port* hsi_get_port (struct hsi_client*) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int readl_relaxed (scalar_t__) ;
 int writel (int,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;
 int writew_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void ssi_cleanup_gdd(struct hsi_controller *ssi, struct hsi_client *cl)
{
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);
 struct hsi_port *port = hsi_get_port(cl);
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 struct hsi_msg *msg;
 unsigned int i;
 u32 val = 0;
 u32 tmp;

 for (i = 0; i < SSI_MAX_GDD_LCH; i++) {
  msg = omap_ssi->gdd_trn[i].msg;
  if ((!msg) || (msg->cl != cl))
   continue;
  writew_relaxed(0, omap_ssi->gdd + SSI_GDD_CCR_REG(i));
  val |= (1 << i);




  if (msg->ttype == HSI_MSG_READ) {
   pm_runtime_mark_last_busy(omap_port->pdev);
   pm_runtime_put_autosuspend(omap_port->pdev);
  }
  omap_ssi->gdd_trn[i].msg = ((void*)0);
 }
 tmp = readl_relaxed(omap_ssi->sys + SSI_GDD_MPU_IRQ_ENABLE_REG);
 tmp &= ~val;
 writel_relaxed(tmp, omap_ssi->sys + SSI_GDD_MPU_IRQ_ENABLE_REG);
 writel(val, omap_ssi->sys + SSI_GDD_MPU_IRQ_STATUS_REG);
}
