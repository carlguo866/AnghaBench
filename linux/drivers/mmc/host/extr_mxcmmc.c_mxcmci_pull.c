
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct mxcmci_host {int dummy; } ;


 int MMC_REG_BUFFER_ACCESS ;
 int STATUS_BUF_READ_RDY ;
 int STATUS_READ_OP_DONE ;
 void* cpu_to_le32 (int ) ;
 int memcpy (int *,void**,int) ;
 unsigned int mxcmci_poll_status (struct mxcmci_host*,int) ;
 int mxcmci_readl (struct mxcmci_host*,int ) ;

__attribute__((used)) static int mxcmci_pull(struct mxcmci_host *host, void *_buf, int bytes)
{
 unsigned int stat;
 u32 *buf = _buf;

 while (bytes > 3) {
  stat = mxcmci_poll_status(host,
    STATUS_BUF_READ_RDY | STATUS_READ_OP_DONE);
  if (stat)
   return stat;
  *buf++ = cpu_to_le32(mxcmci_readl(host, MMC_REG_BUFFER_ACCESS));
  bytes -= 4;
 }

 if (bytes) {
  u8 *b = (u8 *)buf;
  u32 tmp;

  stat = mxcmci_poll_status(host,
    STATUS_BUF_READ_RDY | STATUS_READ_OP_DONE);
  if (stat)
   return stat;
  tmp = cpu_to_le32(mxcmci_readl(host, MMC_REG_BUFFER_ACCESS));
  memcpy(b, &tmp, bytes);
 }

 return 0;
}
