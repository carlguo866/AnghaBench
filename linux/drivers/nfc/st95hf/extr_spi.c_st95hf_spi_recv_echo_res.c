
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st95hf_spi_context {int spi_lock; struct spi_device* spidev; } ;
struct spi_transfer {unsigned char* tx_buf; int len; unsigned char* rx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dev; } ;


 unsigned char ST95HF_COMMAND_RECEIVE ;
 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

int st95hf_spi_recv_echo_res(struct st95hf_spi_context *spicontext,
        unsigned char *receivebuff)
{
 unsigned char readdata_cmd = ST95HF_COMMAND_RECEIVE;
 struct spi_transfer t[2] = {
  {.tx_buf = &readdata_cmd, .len = 1,},
  {.rx_buf = receivebuff, .len = 1,},
 };
 struct spi_message m;
 struct spi_device *spidev = spicontext->spidev;
 int ret = 0;

 mutex_lock(&spicontext->spi_lock);

 spi_message_init(&m);
 spi_message_add_tail(&t[0], &m);
 spi_message_add_tail(&t[1], &m);
 ret = spi_sync(spidev, &m);

 mutex_unlock(&spicontext->spi_lock);

 if (ret)
  dev_err(&spidev->dev, "recv_echo_res, data read error = %d\n",
   ret);

 return ret;
}
