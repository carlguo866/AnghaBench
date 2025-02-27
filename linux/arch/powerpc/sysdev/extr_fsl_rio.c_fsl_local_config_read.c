
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rio_priv {scalar_t__ regs_win; } ;
struct rio_mport {struct rio_priv* priv; } ;


 scalar_t__ in_be32 (scalar_t__) ;
 int pr_debug (char*,int,scalar_t__) ;

__attribute__((used)) static int fsl_local_config_read(struct rio_mport *mport,
    int index, u32 offset, int len, u32 *data)
{
 struct rio_priv *priv = mport->priv;
 pr_debug("fsl_local_config_read: index %d offset %8.8x\n", index,
   offset);
 *data = in_be32(priv->regs_win + offset);

 return 0;
}
