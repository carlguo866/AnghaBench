
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct iobus_devinfo {int* id_reg; struct resource_list id_resources; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct iobus_devinfo* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;
 scalar_t__ resource_list_print_type (struct resource_list*,char*,int ,char*) ;

__attribute__((used)) static int
iobus_print_child(device_t dev, device_t child)
{
        struct iobus_devinfo *dinfo;
        struct resource_list *rl;
        int retval = 0;

 dinfo = device_get_ivars(child);
        rl = &dinfo->id_resources;

 retval += bus_print_child_header(dev, child);

        retval += printf(" offset 0x%x", dinfo->id_reg[1]);
        retval += resource_list_print_type(rl, "irq", SYS_RES_IRQ, "%jd");

        retval += bus_print_child_footer(dev, child);

        return (retval);
}
