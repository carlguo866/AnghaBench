
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int AGP_SIS_WINCTRL ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static u_int32_t
agp_sis_get_aperture(device_t dev)
{
 int gws;




 gws = (pci_read_config(dev, AGP_SIS_WINCTRL, 1) & 0x70) >> 4;
 return (4*1024*1024) << gws;
}
