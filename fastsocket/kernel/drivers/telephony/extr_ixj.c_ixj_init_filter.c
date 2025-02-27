
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int low; } ;
struct TYPE_9__ {scalar_t__* filter_en; TYPE_1__ ver; } ;
struct TYPE_8__ {int filter; int freq; scalar_t__ enable; } ;
typedef TYPE_2__ IXJ_FILTER ;
typedef TYPE_3__ IXJ ;


 scalar_t__ ixj_WriteDSPCommand (unsigned short,TYPE_3__*) ;
 unsigned short** tone_table ;

__attribute__((used)) static int ixj_init_filter(IXJ *j, IXJ_FILTER * jf)
{
 unsigned short cmd;
 int cnt, max;

 if (jf->filter > 3) {
  return -1;
 }
 if (ixj_WriteDSPCommand(0x5154 + jf->filter, j))

  return -1;
 if (!jf->enable) {
  if (ixj_WriteDSPCommand(0x5152, j))

   return -1;
  else
   return 0;
 } else {
  if (ixj_WriteDSPCommand(0x5153, j))

   return -1;

  if (ixj_WriteDSPCommand(0x5154 + jf->filter, j))
   return -1;
 }
 if (jf->freq < 12 && jf->freq > 3) {

  if (ixj_WriteDSPCommand(0x5170 + jf->freq, j))
   return -1;
 } else if (jf->freq > 11) {





  if (ixj_WriteDSPCommand(0x5170 + jf->filter, j))
   return -1;
  if (j->ver.low != 0x12) {
   cmd = 0x515B;
   max = 19;
  } else {
   cmd = 0x515E;
   max = 15;
  }
  if (ixj_WriteDSPCommand(cmd, j))
   return -1;
  for (cnt = 0; cnt < max; cnt++) {
   if (ixj_WriteDSPCommand(tone_table[jf->freq - 12][cnt], j))
    return -1;
  }
 }
 j->filter_en[jf->filter] = jf->enable;
 return 0;
}
