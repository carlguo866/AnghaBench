
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;


 int IDTCPS_RIO_DOMAIN ;
 int rio_mport_write_config_32 (struct rio_mport*,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int
idtcps_set_domain(struct rio_mport *mport, u16 destid, u8 hopcount,
         u8 sw_domain)
{



 rio_mport_write_config_32(mport, destid, hopcount,
      IDTCPS_RIO_DOMAIN, (u32)sw_domain);
 return 0;
}
