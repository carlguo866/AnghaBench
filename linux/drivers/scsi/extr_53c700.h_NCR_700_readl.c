
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {int base; } ;
typedef int __u32 ;


 int BUG_ON (int) ;
 scalar_t__ bEBus ;
 int ioread32 (int) ;
 int ioread32be (int) ;

__attribute__((used)) static inline __u32
NCR_700_readl(struct Scsi_Host *host, __u32 reg)
{
 const struct NCR_700_Host_Parameters *hostdata
  = (struct NCR_700_Host_Parameters *)host->hostdata[0];
 __u32 value = bEBus ? ioread32be(hostdata->base + reg) :
  ioread32(hostdata->base + reg);


 BUG_ON((reg & 0x3) != 0);


 return value;
}
