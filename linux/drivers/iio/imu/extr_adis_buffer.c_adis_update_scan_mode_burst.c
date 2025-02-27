
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct iio_dev {int num_channels; } ;
struct adis {int msg; TYPE_2__* xfer; scalar_t__* buffer; TYPE_1__* burst; } ;
struct TYPE_6__ {int bits_per_word; int len; scalar_t__* rx_buf; scalar_t__* tx_buf; } ;
struct TYPE_5__ {int reg_cmd; scalar_t__ extra_len; } ;


 scalar_t__ ADIS_READ_REG (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct adis* iio_device_get_drvdata (struct iio_dev*) ;
 TYPE_2__* kcalloc (int,int,int ) ;
 int kfree (TYPE_2__*) ;
 scalar_t__* kzalloc (unsigned int,int ) ;
 int spi_message_add_tail (TYPE_2__*,int *) ;
 int spi_message_init (int *) ;

__attribute__((used)) static int adis_update_scan_mode_burst(struct iio_dev *indio_dev,
 const unsigned long *scan_mask)
{
 struct adis *adis = iio_device_get_drvdata(indio_dev);
 unsigned int burst_length;
 u8 *tx;


 burst_length = (indio_dev->num_channels - 1) * sizeof(u16);
 burst_length += adis->burst->extra_len;

 adis->xfer = kcalloc(2, sizeof(*adis->xfer), GFP_KERNEL);
 if (!adis->xfer)
  return -ENOMEM;

 adis->buffer = kzalloc(burst_length + sizeof(u16), GFP_KERNEL);
 if (!adis->buffer) {
  kfree(adis->xfer);
  adis->xfer = ((void*)0);
  return -ENOMEM;
 }

 tx = adis->buffer + burst_length;
 tx[0] = ADIS_READ_REG(adis->burst->reg_cmd);
 tx[1] = 0;

 adis->xfer[0].tx_buf = tx;
 adis->xfer[0].bits_per_word = 8;
 adis->xfer[0].len = 2;
 adis->xfer[1].rx_buf = adis->buffer;
 adis->xfer[1].bits_per_word = 8;
 adis->xfer[1].len = burst_length;

 spi_message_init(&adis->msg);
 spi_message_add_tail(&adis->xfer[0], &adis->msg);
 spi_message_add_tail(&adis->xfer[1], &adis->msg);

 return 0;
}
