
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct es1968 {int dummy; } ;


 int IDR0_DATA_PORT ;
 int NR_APUS ;
 int __maestro_read (struct es1968*,int ) ;
 int apu_index_set (struct es1968*,int) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static u16 __apu_get_register(struct es1968 *chip, u16 channel, u8 reg)
{
 if (snd_BUG_ON(channel >= NR_APUS))
  return 0;
 reg |= (channel << 4);
 apu_index_set(chip, reg);
 return __maestro_read(chip, IDR0_DATA_PORT);
}
