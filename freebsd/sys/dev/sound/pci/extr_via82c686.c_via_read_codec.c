
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_info {int dummy; } ;
typedef int kobj_t ;


 int VIA_CODEC_CTL ;
 int VIA_CODEC_INDEX (int) ;
 int VIA_CODEC_PRIVALID ;
 int VIA_CODEC_READ ;
 int via_rd (struct via_info*,int ,int) ;
 scalar_t__ via_waitready_codec (struct via_info*) ;
 scalar_t__ via_waitvalid_codec (struct via_info*) ;
 int via_wr (struct via_info*,int ,int,int) ;

__attribute__((used)) static int
via_read_codec(kobj_t obj, void *addr, int reg)
{
 struct via_info *via = addr;

 if (via_waitready_codec(via))
  return -1;

 via_wr(via, VIA_CODEC_CTL, VIA_CODEC_PRIVALID | VIA_CODEC_READ | VIA_CODEC_INDEX(reg),4);

 if (via_waitready_codec(via))
  return -1;

 if (via_waitvalid_codec(via))
  return -1;

 return via_rd(via, VIA_CODEC_CTL, 2);
}
