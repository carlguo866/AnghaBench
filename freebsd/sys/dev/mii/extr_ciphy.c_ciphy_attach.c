
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MIIF_NOISOLATE ;
 int MIIF_NOMANPAUSE ;
 int ciphy_funcs ;
 int mii_phy_dev_attach (int ,int,int *,int) ;

__attribute__((used)) static int
ciphy_attach(device_t dev)
{

 mii_phy_dev_attach(dev, MIIF_NOISOLATE | MIIF_NOMANPAUSE,
     &ciphy_funcs, 1);
 return (0);
}
