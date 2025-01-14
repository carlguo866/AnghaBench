
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ir_raw_event {int dummy; } ;


 int RCMM_PREFIX_PULSE ;
 int RCMM_PULSE_0 ;
 int RCMM_PULSE_3 ;
 int RCMM_UNIT ;
 int ir_raw_gen_pulse_space (struct ir_raw_event**,unsigned int*,int ,unsigned int const) ;
 unsigned int* rcmmspace ;

__attribute__((used)) static int ir_rcmm_rawencoder(struct ir_raw_event **ev, unsigned int max,
         unsigned int n, u32 data)
{
 int i;
 int ret;

 ret = ir_raw_gen_pulse_space(ev, &max, RCMM_PREFIX_PULSE, RCMM_PULSE_0);
 if (ret)
  return ret;

 for (i = n - 2; i >= 0; i -= 2) {
  const unsigned int space = rcmmspace[(data >> i) & 3];

  ret = ir_raw_gen_pulse_space(ev, &max, RCMM_UNIT, space);
  if (ret)
   return ret;
 }

 return ir_raw_gen_pulse_space(ev, &max, RCMM_UNIT, RCMM_PULSE_3 * 2);
}
