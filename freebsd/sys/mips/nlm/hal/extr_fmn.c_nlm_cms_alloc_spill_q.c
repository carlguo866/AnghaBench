
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int CMS_MAX_SPILL_SEGMENTS_PER_QUEUE ;
 int CMS_OUTPUTQ_CONFIG (int) ;
 scalar_t__ CMS_SPILL_ENA ;
 int nlm_read_cms_reg (int,int ) ;
 int nlm_write_cms_reg (int,int ,int) ;

int nlm_cms_alloc_spill_q(uint64_t base, int qid, uint64_t spill_base,
    int nsegs)
{
 uint64_t queue_config;
 uint32_t spill_start;

 if (nsegs > CMS_MAX_SPILL_SEGMENTS_PER_QUEUE) {
  return 1;
 }

 queue_config = nlm_read_cms_reg(base,(CMS_OUTPUTQ_CONFIG(qid)));

 spill_start = ((spill_base >> 12) & 0x3F);

 queue_config = (((uint64_t)CMS_SPILL_ENA << 62) |
    (((spill_base >> 18) & 0x3FFFFF) << 27) |
    (spill_start + nsegs - 1) << 21 |
    (spill_start << 15));

 nlm_write_cms_reg(base,(CMS_OUTPUTQ_CONFIG(qid)),queue_config);

 return 0;
}
