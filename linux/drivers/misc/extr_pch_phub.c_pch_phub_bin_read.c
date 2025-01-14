
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_phub_reg {int pch_phub_extrom_base_address; int pdev; scalar_t__ pch_opt_rom_start_address; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef unsigned int ssize_t ;
typedef unsigned int loff_t ;


 int ENODATA ;
 int ERESTARTSYS ;
 struct pch_phub_reg* dev_get_drvdata (int ) ;
 int kobj_to_dev (struct kobject*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pch_phub_mutex ;
 int pch_phub_read_serial_rom (struct pch_phub_reg*,scalar_t__,...) ;
 int pci_map_rom (int ,unsigned int*) ;
 int pci_unmap_rom (int ,int ) ;

__attribute__((used)) static ssize_t pch_phub_bin_read(struct file *filp, struct kobject *kobj,
     struct bin_attribute *attr, char *buf,
     loff_t off, size_t count)
{
 unsigned int rom_signature;
 unsigned char rom_length;
 unsigned int tmp;
 unsigned int addr_offset;
 unsigned int orom_size;
 int ret;
 int err;
 ssize_t rom_size;

 struct pch_phub_reg *chip = dev_get_drvdata(kobj_to_dev(kobj));

 ret = mutex_lock_interruptible(&pch_phub_mutex);
 if (ret) {
  err = -ERESTARTSYS;
  goto return_err_nomutex;
 }


 chip->pch_phub_extrom_base_address = pci_map_rom(chip->pdev, &rom_size);
 if (!chip->pch_phub_extrom_base_address) {
  err = -ENODATA;
  goto exrom_map_err;
 }

 pch_phub_read_serial_rom(chip, chip->pch_opt_rom_start_address,
    (unsigned char *)&rom_signature);
 rom_signature &= 0xff;
 pch_phub_read_serial_rom(chip, chip->pch_opt_rom_start_address + 1,
    (unsigned char *)&tmp);
 rom_signature |= (tmp & 0xff) << 8;
 if (rom_signature == 0xAA55) {
  pch_phub_read_serial_rom(chip,
      chip->pch_opt_rom_start_address + 2,
      &rom_length);
  orom_size = rom_length * 512;
  if (orom_size < off) {
   addr_offset = 0;
   goto return_ok;
  }
  if (orom_size < count) {
   addr_offset = 0;
   goto return_ok;
  }

  for (addr_offset = 0; addr_offset < count; addr_offset++) {
   pch_phub_read_serial_rom(chip,
       chip->pch_opt_rom_start_address + addr_offset + off,
       &buf[addr_offset]);
  }
 } else {
  err = -ENODATA;
  goto return_err;
 }
return_ok:
 pci_unmap_rom(chip->pdev, chip->pch_phub_extrom_base_address);
 mutex_unlock(&pch_phub_mutex);
 return addr_offset;

return_err:
 pci_unmap_rom(chip->pdev, chip->pch_phub_extrom_base_address);
exrom_map_err:
 mutex_unlock(&pch_phub_mutex);
return_err_nomutex:
 return err;
}
