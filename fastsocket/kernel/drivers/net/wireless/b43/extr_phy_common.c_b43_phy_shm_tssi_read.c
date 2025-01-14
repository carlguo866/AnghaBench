
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_wldev {int dummy; } ;


 int B43_HF_CCKBOOST ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_HOSTF1 ;
 scalar_t__ B43_SHM_SH_TSSI_CCK ;
 unsigned int B43_TSSI_MAX ;
 int ENOENT ;
 int b43_shm_read16 (struct b43_wldev*,int ,int ) ;
 int b43_shm_read32 (struct b43_wldev*,int ,scalar_t__) ;
 int b43_shm_write32 (struct b43_wldev*,int ,scalar_t__,int) ;

int b43_phy_shm_tssi_read(struct b43_wldev *dev, u16 shm_offset)
{
 const bool is_ofdm = (shm_offset != B43_SHM_SH_TSSI_CCK);
 unsigned int a, b, c, d;
 unsigned int average;
 u32 tmp;

 tmp = b43_shm_read32(dev, B43_SHM_SHARED, shm_offset);
 a = tmp & 0xFF;
 b = (tmp >> 8) & 0xFF;
 c = (tmp >> 16) & 0xFF;
 d = (tmp >> 24) & 0xFF;
 if (a == 0 || a == B43_TSSI_MAX ||
     b == 0 || b == B43_TSSI_MAX ||
     c == 0 || c == B43_TSSI_MAX ||
     d == 0 || d == B43_TSSI_MAX)
  return -ENOENT;

 tmp = B43_TSSI_MAX | (B43_TSSI_MAX << 8) |
       (B43_TSSI_MAX << 16) | (B43_TSSI_MAX << 24);
 b43_shm_write32(dev, B43_SHM_SHARED, shm_offset, tmp);

 if (is_ofdm) {
  a = (a + 32) & 0x3F;
  b = (b + 32) & 0x3F;
  c = (c + 32) & 0x3F;
  d = (d + 32) & 0x3F;
 }


 average = (a + b + c + d + 2) / 4;
 if (is_ofdm) {

  if (b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_HOSTF1)
      & B43_HF_CCKBOOST)
   average = (average >= 13) ? (average - 13) : 0;
 }

 return average;
}
