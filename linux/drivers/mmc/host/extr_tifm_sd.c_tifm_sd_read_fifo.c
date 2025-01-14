
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_sd {int cmd_flags; unsigned char* bounce_buf_data; struct tifm_dev* dev; } ;
struct tifm_dev {scalar_t__ addr; } ;
struct page {int dummy; } ;


 int DATA_CARRY ;
 scalar_t__ SOCK_MMCSD_DATA ;
 unsigned char* kmap_atomic (struct page*) ;
 int kunmap_atomic (unsigned char*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static void tifm_sd_read_fifo(struct tifm_sd *host, struct page *pg,
         unsigned int off, unsigned int cnt)
{
 struct tifm_dev *sock = host->dev;
 unsigned char *buf;
 unsigned int pos = 0, val;

 buf = kmap_atomic(pg) + off;
 if (host->cmd_flags & DATA_CARRY) {
  buf[pos++] = host->bounce_buf_data[0];
  host->cmd_flags &= ~DATA_CARRY;
 }

 while (pos < cnt) {
  val = readl(sock->addr + SOCK_MMCSD_DATA);
  buf[pos++] = val & 0xff;
  if (pos == cnt) {
   host->bounce_buf_data[0] = (val >> 8) & 0xff;
   host->cmd_flags |= DATA_CARRY;
   break;
  }
  buf[pos++] = (val >> 8) & 0xff;
 }
 kunmap_atomic(buf - off);
}
