
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_1; } ;
typedef TYPE_1__ u32 ;
struct s5c73m3 {int dummy; } ;


 int ARRAY_SIZE (TYPE_1__ const**) ;
 int s5c73m3_write (struct s5c73m3*,TYPE_1__ const,TYPE_1__ const) ;

__attribute__((used)) static int s5c73m3_set_timing_register_for_vdd(struct s5c73m3 *state)
{
 static const u32 regs[][2] = {
  { 0x30100018, 0x0618 },
  { 0x3010001c, 0x10c1 },
  { 0x30100020, 0x249e }
 };
 int ret;
 int i;

 for (i = 0; i < ARRAY_SIZE(regs); i++) {
  ret = s5c73m3_write(state, regs[i][0], regs[i][1]);
  if (ret < 0)
   return ret;
 }

 return 0;
}
