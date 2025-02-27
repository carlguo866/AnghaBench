
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct st_slim_rproc {TYPE_1__* mem; scalar_t__ slimcore; scalar_t__ peri; } ;
struct device {int dummy; } ;
struct rproc {struct st_slim_rproc* priv; struct device dev; } ;
struct TYPE_2__ {scalar_t__ cpu_addr; } ;


 unsigned int SLIM_CLK_GATE_DIS ;
 scalar_t__ SLIM_CLK_GATE_OFST ;
 unsigned int SLIM_CLK_GATE_RESET ;
 scalar_t__ SLIM_CMD_CLR_OFST ;
 scalar_t__ SLIM_CMD_MASK_OFST ;
 scalar_t__ SLIM_EN_OFST ;
 unsigned int SLIM_EN_RUN ;
 scalar_t__ SLIM_ID_OFST ;
 scalar_t__ SLIM_INT_CLR_OFST ;
 scalar_t__ SLIM_INT_MASK_OFST ;
 int SLIM_REV_ID_MAJ (unsigned long) ;
 int SLIM_REV_ID_MIN (unsigned long) ;
 scalar_t__ SLIM_REV_ID_OFST ;
 unsigned int SLIM_STBUS_SYNC_DIS ;
 scalar_t__ SLIM_STBUS_SYNC_OFST ;
 scalar_t__ SLIM_VER_OFST ;
 size_t ST_SLIM_DMEM ;
 int dev_info (struct device*,char*,int ,int ,unsigned long,unsigned long) ;
 unsigned long readl (scalar_t__) ;
 unsigned long readl_relaxed (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int slim_rproc_start(struct rproc *rproc)
{
 struct device *dev = &rproc->dev;
 struct st_slim_rproc *slim_rproc = rproc->priv;
 unsigned long hw_id, hw_ver, fw_rev;
 u32 val;


 val = SLIM_CLK_GATE_DIS | SLIM_CLK_GATE_RESET;
 writel(val, slim_rproc->slimcore + SLIM_CLK_GATE_OFST);


 writel(SLIM_STBUS_SYNC_DIS, slim_rproc->peri + SLIM_STBUS_SYNC_OFST);


 writel(!SLIM_CLK_GATE_DIS,
  slim_rproc->slimcore + SLIM_CLK_GATE_OFST);


 writel(~0U, slim_rproc->peri + SLIM_INT_CLR_OFST);
 writel(~0U, slim_rproc->peri + SLIM_CMD_CLR_OFST);


 writel(~0U, slim_rproc->peri + SLIM_INT_MASK_OFST);
 writel(~0U, slim_rproc->peri + SLIM_CMD_MASK_OFST);


 writel(SLIM_EN_RUN, slim_rproc->slimcore + SLIM_EN_OFST);

 hw_id = readl_relaxed(slim_rproc->slimcore + SLIM_ID_OFST);
 hw_ver = readl_relaxed(slim_rproc->slimcore + SLIM_VER_OFST);

 fw_rev = readl(slim_rproc->mem[ST_SLIM_DMEM].cpu_addr +
   SLIM_REV_ID_OFST);

 dev_info(dev, "fw rev:%ld.%ld on SLIM %ld.%ld\n",
   SLIM_REV_ID_MAJ(fw_rev), SLIM_REV_ID_MIN(fw_rev),
   hw_id, hw_ver);

 return 0;
}
