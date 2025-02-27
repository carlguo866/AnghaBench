
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct isa_device {struct resource_list id_resources; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 int EINVAL ;
 int ISA_NDRQ ;
 int ISA_NIRQ ;
 int ISA_NMEM ;
 int ISA_NPORT ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int resource_list_add (struct resource_list*,int,int,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
isa_set_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t start, rman_res_t count)
{
 struct isa_device* idev = DEVTOISA(child);
 struct resource_list *rl = &idev->id_resources;

 if (type != SYS_RES_IOPORT && type != SYS_RES_MEMORY
     && type != SYS_RES_IRQ && type != SYS_RES_DRQ)
  return (EINVAL);
 if (rid < 0)
  return (EINVAL);
 if (type == SYS_RES_IOPORT && rid >= ISA_NPORT)
  return (EINVAL);
 if (type == SYS_RES_MEMORY && rid >= ISA_NMEM)
  return (EINVAL);
 if (type == SYS_RES_IRQ && rid >= ISA_NIRQ)
  return (EINVAL);
 if (type == SYS_RES_DRQ && rid >= ISA_NDRQ)
  return (EINVAL);

 resource_list_add(rl, type, rid, start, start + count - 1, count);

 return (0);
}
