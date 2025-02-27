
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int CBBR_MEMBASE0 ;
 int CBBR_MEMLIMIT0 ;
 int DEVPRINTF (int ) ;
 int EINVAL ;
 int SYS_RES_MEMORY ;
 int cbb_activate_window (int ,int ) ;
 int pci_write_config (int ,int,int ,int) ;

__attribute__((used)) static int
cbb_cardbus_mem_open(device_t brdev, int win, uint32_t start, uint32_t end)
{
 int basereg;
 int limitreg;

 if ((win < 0) || (win > 1)) {
  DEVPRINTF((brdev,
      "cbb_cardbus_mem_open: window out of range %d\n", win));
  return (EINVAL);
 }

 basereg = win * 8 + CBBR_MEMBASE0;
 limitreg = win * 8 + CBBR_MEMLIMIT0;

 pci_write_config(brdev, basereg, start, 4);
 pci_write_config(brdev, limitreg, end, 4);
 cbb_activate_window(brdev, SYS_RES_MEMORY);
 return (0);
}
