
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st33zp24_spi_phy {int* rx_buf; int latency; int * tx_buf; struct spi_device* spi_device; } ;
struct spi_transfer {int* rx_buf; int len; int * tx_buf; } ;
struct spi_device {int dummy; } ;


 int LOCALITY0 ;
 int TPM_DUMMY_BYTE ;
 int memcpy (int *,int*,int) ;
 int memset (int *,int ,int) ;
 int spi_sync_transfer (struct spi_device*,struct spi_transfer*,int) ;

__attribute__((used)) static int st33zp24_spi_read8_reg(void *phy_id, u8 tpm_register, u8 *tpm_data,
      int tpm_size)
{
 int total_length = 0, ret;
 struct st33zp24_spi_phy *phy = phy_id;
 struct spi_device *dev = phy->spi_device;
 struct spi_transfer spi_xfer = {
  .tx_buf = phy->tx_buf,
  .rx_buf = phy->rx_buf,
 };


 phy->tx_buf[total_length++] = LOCALITY0;
 phy->tx_buf[total_length++] = tpm_register;

 memset(&phy->tx_buf[total_length], TPM_DUMMY_BYTE,
        phy->latency + tpm_size);

 spi_xfer.len = total_length + phy->latency + tpm_size;


 ret = spi_sync_transfer(dev, &spi_xfer, 1);
 if (tpm_size > 0 && ret == 0) {
  ret = phy->rx_buf[total_length + phy->latency - 1];

  memcpy(tpm_data, phy->rx_buf + total_length + phy->latency,
         tpm_size);
 }

 return ret;
}
