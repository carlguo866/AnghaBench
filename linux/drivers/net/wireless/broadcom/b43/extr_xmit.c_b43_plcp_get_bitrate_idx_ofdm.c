
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_plcp_hdr6 {int* raw; } ;



__attribute__((used)) static int b43_plcp_get_bitrate_idx_ofdm(struct b43_plcp_hdr6 *plcp, bool ghz5)
{

 int base = ghz5 ? 0 : 4;

 switch (plcp->raw[0] & 0xF) {
 case 0xB:
  return base + 0;
 case 0xF:
  return base + 1;
 case 0xA:
  return base + 2;
 case 0xE:
  return base + 3;
 case 0x9:
  return base + 4;
 case 0xD:
  return base + 5;
 case 0x8:
  return base + 6;
 case 0xC:
  return base + 7;
 }
 return -1;
}
