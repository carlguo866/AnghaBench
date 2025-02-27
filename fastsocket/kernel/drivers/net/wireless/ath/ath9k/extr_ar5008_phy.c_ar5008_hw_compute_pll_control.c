
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_RTC_PLL_CLKSEL ;
 int AR_RTC_PLL_DIV ;
 int AR_RTC_PLL_DIV2 ;
 int AR_RTC_PLL_REFDIV_5 ;
 scalar_t__ IS_CHAN_5GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HALF_RATE (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (struct ath9k_channel*) ;
 int SM (int,int ) ;

__attribute__((used)) static u32 ar5008_hw_compute_pll_control(struct ath_hw *ah,
      struct ath9k_channel *chan)
{
 u32 pll;

 pll = AR_RTC_PLL_REFDIV_5 | AR_RTC_PLL_DIV2;

 if (chan && IS_CHAN_HALF_RATE(chan))
  pll |= SM(0x1, AR_RTC_PLL_CLKSEL);
 else if (chan && IS_CHAN_QUARTER_RATE(chan))
  pll |= SM(0x2, AR_RTC_PLL_CLKSEL);

 if (chan && IS_CHAN_5GHZ(chan))
  pll |= SM(0xa, AR_RTC_PLL_DIV);
 else
  pll |= SM(0xb, AR_RTC_PLL_DIV);

 return pll;
}
