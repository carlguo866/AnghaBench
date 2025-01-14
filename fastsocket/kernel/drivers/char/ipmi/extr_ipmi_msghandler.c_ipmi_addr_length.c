
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_system_interface_addr {int dummy; } ;
struct ipmi_lan_addr {int dummy; } ;
struct ipmi_ipmb_addr {int dummy; } ;


 int IPMI_IPMB_ADDR_TYPE ;
 int IPMI_IPMB_BROADCAST_ADDR_TYPE ;
 int IPMI_LAN_ADDR_TYPE ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;

unsigned int ipmi_addr_length(int addr_type)
{
 if (addr_type == IPMI_SYSTEM_INTERFACE_ADDR_TYPE)
  return sizeof(struct ipmi_system_interface_addr);

 if ((addr_type == IPMI_IPMB_ADDR_TYPE)
   || (addr_type == IPMI_IPMB_BROADCAST_ADDR_TYPE))
  return sizeof(struct ipmi_ipmb_addr);

 if (addr_type == IPMI_LAN_ADDR_TYPE)
  return sizeof(struct ipmi_lan_addr);

 return 0;
}
