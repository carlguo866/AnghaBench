
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc85xx_l2_pdata {scalar_t__ l2_vbase; } ;
struct edac_device_ctl_info {struct mpc85xx_l2_pdata* pvt_info; } ;
typedef int ssize_t ;


 scalar_t__ MPC85XX_L2_ERRINJHI ;
 int in_be32 (scalar_t__) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t mpc85xx_l2_inject_data_hi_show(struct edac_device_ctl_info
           *edac_dev, char *data)
{
 struct mpc85xx_l2_pdata *pdata = edac_dev->pvt_info;
 return sprintf(data, "0x%08x",
         in_be32(pdata->l2_vbase + MPC85XX_L2_ERRINJHI));
}
