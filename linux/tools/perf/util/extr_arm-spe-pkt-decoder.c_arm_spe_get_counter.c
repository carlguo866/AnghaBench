
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct arm_spe_pkt {unsigned char index; int payload; int type; } ;


 int ARM_SPE_COUNTER ;
 int ARM_SPE_NEED_MORE_BYTES ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int arm_spe_get_counter(const unsigned char *buf, size_t len,
          const unsigned char ext_hdr, struct arm_spe_pkt *packet)
{
 if (len < 2)
  return ARM_SPE_NEED_MORE_BYTES;

 packet->type = ARM_SPE_COUNTER;
 if (ext_hdr)
  packet->index = ((buf[0] & 0x3) << 3) | (buf[1] & 0x7);
 else
  packet->index = buf[0] & 0x7;

 packet->payload = le16_to_cpu(*(uint16_t *)(buf + 1));

 return 1 + ext_hdr + 2;
}
