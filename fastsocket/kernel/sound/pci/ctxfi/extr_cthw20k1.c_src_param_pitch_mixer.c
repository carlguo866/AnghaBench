
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AR_PARAM_SRC_OFFSET ;
 unsigned int AR_PTS_PITCH ;
 unsigned int AR_SLOT_SIZE ;

__attribute__((used)) static unsigned int src_param_pitch_mixer(unsigned int src_idx)
{
 return ((src_idx << 4) + AR_PTS_PITCH + AR_SLOT_SIZE
   - AR_PARAM_SRC_OFFSET) % AR_SLOT_SIZE;

}
