
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc_nand_host {int * devtype_data; } ;


 int imx21_nand_devtype_data ;

__attribute__((used)) static inline int is_imx21_nfc(struct mxc_nand_host *host)
{
 return host->devtype_data == &imx21_nand_devtype_data;
}
