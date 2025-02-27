
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sge_ieee1212 {int length; scalar_t__ addrLow; scalar_t__ flags; int addrHigh; } ;
struct aac_raw_io2 {int sgeNominalSize; int flags; int sgeCnt; struct sge_ieee1212* sge; } ;


 int GFP_ATOMIC ;
 int PAGE_SIZE ;
 int RIO2_SGL_CONFORMANT ;
 scalar_t__ aac_convert_sgl ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int) ;
 int kfree (struct sge_ieee1212*) ;
 struct sge_ieee1212* kmalloc (int,int ) ;
 int memcpy (struct sge_ieee1212*,struct sge_ieee1212*,int) ;

__attribute__((used)) static int aac_convert_sgraw2(struct aac_raw_io2 *rio2, int pages, int nseg, int nseg_new)
{
 struct sge_ieee1212 *sge;
 int i, j, pos;
 u32 addr_low;

 if (aac_convert_sgl == 0)
  return 0;

 sge = kmalloc(nseg_new * sizeof(struct sge_ieee1212), GFP_ATOMIC);
 if (sge == ((void*)0))
  return -1;

 for (i = 1, pos = 1; i < nseg-1; ++i) {
  for (j = 0; j < rio2->sge[i].length / (pages * PAGE_SIZE); ++j) {
   addr_low = rio2->sge[i].addrLow + j * pages * PAGE_SIZE;
   sge[pos].addrLow = addr_low;
   sge[pos].addrHigh = rio2->sge[i].addrHigh;
   if (addr_low < rio2->sge[i].addrLow)
    sge[pos].addrHigh++;
   sge[pos].length = pages * PAGE_SIZE;
   sge[pos].flags = 0;
   pos++;
  }
 }
 sge[pos] = rio2->sge[nseg-1];
 memcpy(&rio2->sge[1], &sge[1], (nseg_new-1)*sizeof(struct sge_ieee1212));

 kfree(sge);
 rio2->sgeCnt = cpu_to_le32(nseg_new);
 rio2->flags |= cpu_to_le16(RIO2_SGL_CONFORMANT);
 rio2->sgeNominalSize = pages * PAGE_SIZE;
 return 0;
}
