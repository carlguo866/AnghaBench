
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int rssi_offset; int cap_flags; } ;


 int DEFAULT_RSSI_OFFSET ;
 int GPIOCSR ;
 int GPIOCSR_DIR0 ;
 int REQUIRE_ATIM_QUEUE ;
 int REQUIRE_DMA ;
 int REQUIRE_SW_SEQNO ;
 int __set_bit (int ,int *) ;
 int rt2400pci_init_eeprom (struct rt2x00_dev*) ;
 int rt2400pci_probe_hw_mode (struct rt2x00_dev*) ;
 int rt2400pci_validate_eeprom (struct rt2x00_dev*) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static int rt2400pci_probe_hw(struct rt2x00_dev *rt2x00dev)
{
 int retval;
 u32 reg;




 retval = rt2400pci_validate_eeprom(rt2x00dev);
 if (retval)
  return retval;

 retval = rt2400pci_init_eeprom(rt2x00dev);
 if (retval)
  return retval;





 rt2x00mmio_register_read(rt2x00dev, GPIOCSR, &reg);
 rt2x00_set_field32(&reg, GPIOCSR_DIR0, 1);
 rt2x00mmio_register_write(rt2x00dev, GPIOCSR, reg);




 retval = rt2400pci_probe_hw_mode(rt2x00dev);
 if (retval)
  return retval;




 __set_bit(REQUIRE_ATIM_QUEUE, &rt2x00dev->cap_flags);
 __set_bit(REQUIRE_DMA, &rt2x00dev->cap_flags);
 __set_bit(REQUIRE_SW_SEQNO, &rt2x00dev->cap_flags);




 rt2x00dev->rssi_offset = DEFAULT_RSSI_OFFSET;

 return 0;
}
