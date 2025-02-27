
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_PHY (int) ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_reverse_bits (int,int) ;

__attribute__((used)) static int ar9002_hw_get_radiorev(struct ath_hw *ah)
{
 u32 val;
 int i;

 ENABLE_REGWRITE_BUFFER(ah);

 REG_WRITE(ah, AR_PHY(0x36), 0x00007058);
 for (i = 0; i < 8; i++)
  REG_WRITE(ah, AR_PHY(0x20), 0x00010000);

 REGWRITE_BUFFER_FLUSH(ah);

 val = (REG_READ(ah, AR_PHY(256)) >> 24) & 0xff;
 val = ((val & 0xf0) >> 4) | ((val & 0x0f) << 4);

 return ath9k_hw_reverse_bits(val, 8);
}
