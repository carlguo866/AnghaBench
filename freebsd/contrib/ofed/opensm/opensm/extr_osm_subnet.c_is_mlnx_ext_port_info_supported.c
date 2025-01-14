
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int ib_net32_t ;
typedef int ib_net16_t ;


 int cl_ntoh16 (int) ;
 int cl_ntoh32 (int ) ;

int is_mlnx_ext_port_info_supported(ib_net32_t vendid, ib_net16_t devid)
{
 uint32_t vendid_ho;
 uint16_t devid_ho;

 devid_ho = cl_ntoh16(devid);
 if ((devid_ho >= 0xc738 && devid_ho <= 0xc73b) || devid_ho == 0xcb20 ||
     devid_ho == 0xcf08 || devid == 0x1b02)
  return 1;
 if (devid_ho >= 0x1003 && devid_ho <= 0x1017)
  return 1;

 vendid_ho = cl_ntoh32(vendid);
 if (vendid_ho == 0x119f) {

  if (devid_ho == 0x1b02 || devid_ho == 0x1b50)
   return 1;

  if (devid_ho == 0x1ba0 ||
      (devid_ho >= 0x1bd0 && devid_ho <= 0x1bd5))
   return 1;

  if (devid_ho == 0x1b33 || devid_ho == 0x1b73 ||
      devid_ho == 0x1b40 || devid_ho == 0x1b41 ||
      devid_ho == 0x1b60 || devid_ho == 0x1b61)
   return 1;

  if (devid_ho == 0x1b83 ||
      devid_ho == 0x1b93 || devid_ho == 0x1b94)
   return 1;

  if (devid_ho == 0x1bb4 || devid_ho == 0x1bb5 ||
      devid_ho == 0x1bc4)
   return 1;
 }
 return 0;
}
