
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* rf_set_freq ) (struct ath_hw*,struct ath9k_channel*) ;} ;


 TYPE_1__* ath9k_hw_private_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,struct ath9k_channel*) ;

__attribute__((used)) static inline int ath9k_hw_rf_set_freq(struct ath_hw *ah,
           struct ath9k_channel *chan)
{
 return ath9k_hw_private_ops(ah)->rf_set_freq(ah, chan);
}
