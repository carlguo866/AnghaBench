
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int intf_ap_count; int flags; } ;


 int CONFIG_MONITORING ;
 unsigned int const FIF_ALLMULTI ;
 unsigned int const FIF_CONTROL ;
 unsigned int const FIF_FCSFAIL ;
 unsigned int const FIF_PLCPFAIL ;
 unsigned int const FIF_PSPOLL ;
 int TXRX_CSR0 ;
 int TXRX_CSR0_DROP_ACK_CTS ;
 int TXRX_CSR0_DROP_BROADCAST ;
 int TXRX_CSR0_DROP_CONTROL ;
 int TXRX_CSR0_DROP_CRC ;
 int TXRX_CSR0_DROP_MULTICAST ;
 int TXRX_CSR0_DROP_NOT_TO_ME ;
 int TXRX_CSR0_DROP_PHYSICAL ;
 int TXRX_CSR0_DROP_TO_DS ;
 int TXRX_CSR0_DROP_VERSION_ERROR ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt61pci_config_filter(struct rt2x00_dev *rt2x00dev,
      const unsigned int filter_flags)
{
 u32 reg;







 reg = rt2x00mmio_register_read(rt2x00dev, TXRX_CSR0);
 rt2x00_set_field32(&reg, TXRX_CSR0_DROP_CRC,
      !(filter_flags & FIF_FCSFAIL));
 rt2x00_set_field32(&reg, TXRX_CSR0_DROP_PHYSICAL,
      !(filter_flags & FIF_PLCPFAIL));
 rt2x00_set_field32(&reg, TXRX_CSR0_DROP_CONTROL,
      !(filter_flags & (FIF_CONTROL | FIF_PSPOLL)));
 rt2x00_set_field32(&reg, TXRX_CSR0_DROP_NOT_TO_ME,
      !test_bit(CONFIG_MONITORING, &rt2x00dev->flags));
 rt2x00_set_field32(&reg, TXRX_CSR0_DROP_TO_DS,
      !test_bit(CONFIG_MONITORING, &rt2x00dev->flags) &&
      !rt2x00dev->intf_ap_count);
 rt2x00_set_field32(&reg, TXRX_CSR0_DROP_VERSION_ERROR, 1);
 rt2x00_set_field32(&reg, TXRX_CSR0_DROP_MULTICAST,
      !(filter_flags & FIF_ALLMULTI));
 rt2x00_set_field32(&reg, TXRX_CSR0_DROP_BROADCAST, 0);
 rt2x00_set_field32(&reg, TXRX_CSR0_DROP_ACK_CTS,
      !(filter_flags & FIF_CONTROL));
 rt2x00mmio_register_write(rt2x00dev, TXRX_CSR0, reg);
}
