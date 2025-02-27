
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* uint16_t ;
struct ubifs_info {int dummy; } ;


 int UBIFS_LPT_CRC_BITS ;
 int UBIFS_LPT_CRC_BYTES ;
 int UBIFS_LPT_NOT_A_NODE ;
 int UBIFS_LPT_TYPE_BITS ;
 void* crc16 (int,int *,int) ;
 int get_lpt_node_len (struct ubifs_info const*,int) ;
 void* ubifs_unpack_bits (int **,int*,int) ;

__attribute__((used)) static int is_a_node(const struct ubifs_info *c, uint8_t *buf, int len)
{
 uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
 int pos = 0, node_type, node_len;
 uint16_t crc, calc_crc;

 if (len < UBIFS_LPT_CRC_BYTES + (UBIFS_LPT_TYPE_BITS + 7) / 8)
  return 0;
 node_type = ubifs_unpack_bits(&addr, &pos, UBIFS_LPT_TYPE_BITS);
 if (node_type == UBIFS_LPT_NOT_A_NODE)
  return 0;
 node_len = get_lpt_node_len(c, node_type);
 if (!node_len || node_len > len)
  return 0;
 pos = 0;
 addr = buf;
 crc = ubifs_unpack_bits(&addr, &pos, UBIFS_LPT_CRC_BITS);
 calc_crc = crc16(-1, buf + UBIFS_LPT_CRC_BYTES,
    node_len - UBIFS_LPT_CRC_BYTES);
 if (crc != calc_crc)
  return 0;
 return 1;
}
