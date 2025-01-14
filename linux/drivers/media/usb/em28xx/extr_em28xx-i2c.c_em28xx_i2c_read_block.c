
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ is_em2800; } ;
struct em28xx {int * i2c_client; TYPE_1__ board; } ;


 int EINVAL ;
 int i2c_master_recv (int *,int*,int) ;
 int i2c_master_send (int *,int*,int) ;

__attribute__((used)) static int em28xx_i2c_read_block(struct em28xx *dev, unsigned int bus, u16 addr,
     bool addr_w16, u16 len, u8 *data)
{
 int remain = len, rsize, rsize_max, ret;
 u8 buf[2];


 if (addr + remain > (addr_w16 * 0xff00 + 0xff + 1))
  return -EINVAL;

 buf[0] = addr >> 8;
 buf[1] = addr & 0xff;
 ret = i2c_master_send(&dev->i2c_client[bus],
         buf + !addr_w16, 1 + addr_w16);
 if (ret < 0)
  return ret;

 if (dev->board.is_em2800)
  rsize_max = 4;
 else
  rsize_max = 64;
 while (remain > 0) {
  if (remain > rsize_max)
   rsize = rsize_max;
  else
   rsize = remain;

  ret = i2c_master_recv(&dev->i2c_client[bus], data, rsize);
  if (ret < 0)
   return ret;

  remain -= rsize;
  data += rsize;
 }

 return len;
}
