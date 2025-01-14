
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_phub_reg {size_t pch_opt_rom_start_address; int pch_phub_extrom_base_address; int pdev; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef unsigned int ssize_t ;
typedef size_t loff_t ;


 int ENOMEM ;
 unsigned int ERESTARTSYS ;
 size_t PCH_PHUB_OROM_SIZE ;
 struct pch_phub_reg* dev_get_drvdata (int ) ;
 int kobj_to_dev (struct kobject*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pch_phub_mutex ;
 int pch_phub_write_serial_rom (struct pch_phub_reg*,size_t,char) ;
 int pci_map_rom (int ,unsigned int*) ;
 int pci_unmap_rom (int ,int ) ;

__attribute__((used)) static ssize_t pch_phub_bin_write(struct file *filp, struct kobject *kobj,
      struct bin_attribute *attr,
      char *buf, loff_t off, size_t count)
{
 int err;
 unsigned int addr_offset;
 int ret;
 ssize_t rom_size;
 struct pch_phub_reg *chip = dev_get_drvdata(kobj_to_dev(kobj));

 ret = mutex_lock_interruptible(&pch_phub_mutex);
 if (ret)
  return -ERESTARTSYS;

 if (off > PCH_PHUB_OROM_SIZE) {
  addr_offset = 0;
  goto return_ok;
 }
 if (count > PCH_PHUB_OROM_SIZE) {
  addr_offset = 0;
  goto return_ok;
 }

 chip->pch_phub_extrom_base_address = pci_map_rom(chip->pdev, &rom_size);
 if (!chip->pch_phub_extrom_base_address) {
  err = -ENOMEM;
  goto exrom_map_err;
 }

 for (addr_offset = 0; addr_offset < count; addr_offset++) {
  if (PCH_PHUB_OROM_SIZE < off + addr_offset)
   goto return_ok;

  ret = pch_phub_write_serial_rom(chip,
       chip->pch_opt_rom_start_address + addr_offset + off,
       buf[addr_offset]);
  if (ret) {
   err = ret;
   goto return_err;
  }
 }

return_ok:
 pci_unmap_rom(chip->pdev, chip->pch_phub_extrom_base_address);
 mutex_unlock(&pch_phub_mutex);
 return addr_offset;

return_err:
 pci_unmap_rom(chip->pdev, chip->pch_phub_extrom_base_address);

exrom_map_err:
 mutex_unlock(&pch_phub_mutex);
 return err;
}
