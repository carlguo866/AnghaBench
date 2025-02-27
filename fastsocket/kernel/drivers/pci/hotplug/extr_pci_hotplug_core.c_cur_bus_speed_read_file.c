
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot {int hotplug; } ;
typedef int ssize_t ;
typedef enum pci_bus_speed { ____Placeholder_pci_bus_speed } pci_bus_speed ;


 int PCI_SPEED_UNKNOWN ;
 int get_cur_bus_speed (int ,int*) ;
 char** pci_bus_speed_strings ;
 int sprintf (char*,char*,char*) ;
 char* unknown_speed ;

__attribute__((used)) static ssize_t cur_bus_speed_read_file(struct pci_slot *slot, char *buf)
{
 char *speed_string;
 int retval;
 enum pci_bus_speed value;

 retval = get_cur_bus_speed(slot->hotplug, &value);
 if (retval)
  goto exit;

 if (value == PCI_SPEED_UNKNOWN)
  speed_string = unknown_speed;
 else
  speed_string = pci_bus_speed_strings[value];

 retval = sprintf (buf, "%s\n", speed_string);

exit:
 return retval;
}
