
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {int* data; int len; } ;


 int CRC_INIT ;
 scalar_t__ NCI_SPI_CRC_LEN ;
 scalar_t__ crc_ccitt (int ,int*,scalar_t__) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int nci_spi_check_crc(struct sk_buff *skb)
{
 u16 crc_data = (skb->data[skb->len - 2] << 8) |
   skb->data[skb->len - 1];
 int ret;

 ret = (crc_ccitt(CRC_INIT, skb->data, skb->len - NCI_SPI_CRC_LEN)
   == crc_data);

 skb_trim(skb, skb->len - NCI_SPI_CRC_LEN);

 return ret;
}
