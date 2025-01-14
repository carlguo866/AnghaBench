
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pkt {unsigned char index; int payload; int type; } ;


 int ARM_SPE_ADDRESS ;
 int ARM_SPE_NEED_MORE_BYTES ;
 int memcpy_le64 (int *,unsigned char const*,int) ;

__attribute__((used)) static int arm_spe_get_addr(const unsigned char *buf, size_t len,
       const unsigned char ext_hdr, struct arm_spe_pkt *packet)
{
 if (len < 8)
  return ARM_SPE_NEED_MORE_BYTES;

 packet->type = ARM_SPE_ADDRESS;
 if (ext_hdr)
  packet->index = ((buf[0] & 0x3) << 3) | (buf[1] & 0x7);
 else
  packet->index = buf[0] & 0x7;

 memcpy_le64(&packet->payload, buf + 1, 8);

 return 1 + ext_hdr + 8;
}
