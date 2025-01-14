
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w1_slave {struct w1_master* master; } ;
struct w1_master {int bus_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int COUNTER_COUNT ;
 int CRC16_INIT ;
 int CRC16_VALID ;
 int PAGE_SIZE ;
 int READ_BYTE_COUNT ;
 int crc16 (int,int*,int) ;
 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int dev_warn (struct device*,char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ w1_read_block (struct w1_master*,int*,int) ;
 int w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_block (struct w1_master*,int*,int) ;

__attribute__((used)) static ssize_t w1_slave_show(struct device *device,
        struct device_attribute *attr, char *out_buf)
{
 struct w1_slave *sl = dev_to_w1_slave(device);
 struct w1_master *dev = sl->master;
 u8 rbuf[COUNTER_COUNT * READ_BYTE_COUNT];
 u8 wrbuf[3];
 int rom_addr;
 int read_byte_count;
 int result;
 ssize_t c;
 int ii;
 int p;
 int crc;

 c = PAGE_SIZE;
 rom_addr = (12 << 5) + 31;
 wrbuf[0] = 0xA5;
 wrbuf[1] = rom_addr & 0xFF;
 wrbuf[2] = rom_addr >> 8;
 mutex_lock(&dev->bus_mutex);
 if (!w1_reset_select_slave(sl)) {
  w1_write_block(dev, wrbuf, 3);
  read_byte_count = 0;
  for (p = 0; p < 4; p++) {







   read_byte_count += w1_read_block(dev,
    rbuf + (p * READ_BYTE_COUNT), READ_BYTE_COUNT);
   for (ii = 0; ii < READ_BYTE_COUNT; ++ii)
    c -= snprintf(out_buf + PAGE_SIZE - c,
     c, "%02x ",
     rbuf[(p * READ_BYTE_COUNT) + ii]);
   if (read_byte_count != (p + 1) * READ_BYTE_COUNT) {
    dev_warn(device,
     "w1_counter_read() returned %u bytes "
     "instead of %d bytes wanted.\n",
     read_byte_count,
     READ_BYTE_COUNT);
    c -= snprintf(out_buf + PAGE_SIZE - c,
     c, "crc=NO\n");
   } else {
    if (p == 0) {
     crc = crc16(CRC16_INIT, wrbuf, 3);
     crc = crc16(crc, rbuf, 11);
    } else {




     crc = crc16(CRC16_INIT,
      (rbuf + 11) +
      ((p - 1) * READ_BYTE_COUNT),
      READ_BYTE_COUNT);
    }
    if (crc == CRC16_VALID) {
     result = 0;
     for (ii = 4; ii > 0; ii--) {
      result <<= 8;
      result |= rbuf[(p *
       READ_BYTE_COUNT) + ii];
     }
     c -= snprintf(out_buf + PAGE_SIZE - c,
      c, "crc=YES c=%d\n", result);
    } else {
     c -= snprintf(out_buf + PAGE_SIZE - c,
      c, "crc=NO\n");
    }
   }
  }
 } else {
  c -= snprintf(out_buf + PAGE_SIZE - c, c, "Connection error");
 }
 mutex_unlock(&dev->bus_mutex);
 return PAGE_SIZE - c;
}
