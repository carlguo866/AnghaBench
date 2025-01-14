
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 scalar_t__ bootverbose ;
 int inb (int) ;
 int inl (int) ;
 int pci_cfgdisable () ;
 int pci_cfgenable (int ,int,int ,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
pci_cfgcheck(int maxdev)
{
 uint32_t id, class;
 uint8_t header;
 uint8_t device;
 int port;

 if (bootverbose)
  printf("pci_cfgcheck:\tdevice ");

 for (device = 0; device < maxdev; device++) {
  if (bootverbose)
   printf("%d ", device);

  port = pci_cfgenable(0, device, 0, 0, 4);
  id = inl(port);
  if (id == 0 || id == 0xffffffff)
   continue;

  port = pci_cfgenable(0, device, 0, 8, 4);
  class = inl(port) >> 8;
  if (bootverbose)
   printf("[class=%06x] ", class);
  if (class == 0 || (class & 0xf870ff) != 0)
   continue;

  port = pci_cfgenable(0, device, 0, 14, 1);
  header = inb(port);
  if (bootverbose)
   printf("[hdr=%02x] ", header);
  if ((header & 0x7e) != 0)
   continue;

  if (bootverbose)
   printf("is there (id=%08x)\n", id);

  pci_cfgdisable();
  return (1);
 }
 if (bootverbose)
  printf("-- nothing found\n");

 pci_cfgdisable();
 return (0);
}
