
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int i64 ;


 size_t CKPT_HDR_LO_LSW ;
 size_t CKPT_HDR_LO_MSW ;

i64 lsmCheckpointLogOffset(u32 *aCkpt){
  return ((i64)aCkpt[CKPT_HDR_LO_MSW] << 32) + (i64)aCkpt[CKPT_HDR_LO_LSW];
}
