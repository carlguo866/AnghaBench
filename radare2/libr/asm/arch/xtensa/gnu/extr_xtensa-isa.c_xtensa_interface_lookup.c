
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int intf; } ;
struct TYPE_7__ {char const* key; TYPE_1__ u; } ;
typedef TYPE_2__ xtensa_lookup_entry ;
struct TYPE_8__ {scalar_t__ num_interfaces; int interface_lookup_table; } ;
typedef TYPE_3__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int xtensa_interface ;


 int XTENSA_UNDEFINED ;
 TYPE_2__* bsearch (TYPE_2__*,int ,scalar_t__,int,int ) ;
 int sprintf (int ,char*,char const*) ;
 int strcpy (int ,char*) ;
 int xtensa_isa_bad_interface ;
 int xtensa_isa_name_compare ;
 int xtisa_errno ;
 int xtisa_error_msg ;

xtensa_interface
xtensa_interface_lookup (xtensa_isa isa, const char *ifname)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_lookup_entry entry, *result = 0;

  if (!ifname || !*ifname)
    {
      xtisa_errno = xtensa_isa_bad_interface;
      strcpy (xtisa_error_msg, "invalid interface name");
      return XTENSA_UNDEFINED;
    }

  if (intisa->num_interfaces != 0)
    {
      entry.key = ifname;
      result = bsearch (&entry, intisa->interface_lookup_table,
   intisa->num_interfaces, sizeof (xtensa_lookup_entry),
   xtensa_isa_name_compare);
    }

  if (!result)
    {
      xtisa_errno = xtensa_isa_bad_interface;
      sprintf (xtisa_error_msg, "interface \"%s\" not recognized", ifname);
      return XTENSA_UNDEFINED;
    }

  return result->u.intf;
}
