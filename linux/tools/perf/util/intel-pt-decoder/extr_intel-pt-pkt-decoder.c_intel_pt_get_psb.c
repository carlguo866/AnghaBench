
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_pkt {int type; } ;


 int INTEL_PT_BAD_PACKET ;
 int INTEL_PT_NEED_MORE_BYTES ;
 int INTEL_PT_PSB ;

__attribute__((used)) static int intel_pt_get_psb(const unsigned char *buf, size_t len,
       struct intel_pt_pkt *packet)
{
 int i;

 if (len < 16)
  return INTEL_PT_NEED_MORE_BYTES;

 for (i = 2; i < 16; i += 2) {
  if (buf[i] != 2 || buf[i + 1] != 0x82)
   return INTEL_PT_BAD_PACKET;
 }

 packet->type = INTEL_PT_PSB;
 return 16;
}
