
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; int delay_usecs; int* rx_buf; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct kxsd9_state {int* rx; int buf_lock; int us; int * tx; } ;
struct iio_dev_attr {int address; } ;
struct iio_dev {struct kxsd9_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int KXSD9_READ (int ) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int sprintf (char*,char*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t kxsd9_read_accel(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct spi_message msg;
 int ret;
 ssize_t len = 0;
 u16 val;
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct kxsd9_state *st = indio_dev->dev_data;
 struct spi_transfer xfers[] = {
  {
   .bits_per_word = 8,
   .len = 1,
   .cs_change = 0,
   .delay_usecs = 200,
   .tx_buf = st->tx,
  }, {
   .bits_per_word = 8,
   .len = 2,
   .cs_change = 1,
   .rx_buf = st->rx,
  },
 };

 mutex_lock(&st->buf_lock);
 st->tx[0] = KXSD9_READ(this_attr->address);
 spi_message_init(&msg);
 spi_message_add_tail(&xfers[0], &msg);
 spi_message_add_tail(&xfers[1], &msg);
 ret = spi_sync(st->us, &msg);
 if (ret)
  goto error_ret;
 val = (((u16)(st->rx[0])) << 8) | (st->rx[1] & 0xF0);
 len = sprintf(buf, "%d\n", val);
error_ret:
 mutex_unlock(&st->buf_lock);

 return ret ? ret : len;
}
