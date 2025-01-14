
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {scalar_t__ in_soc; } ;
struct dib0090_state {int bb_1_def; TYPE_3__ identity; TYPE_2__* fe; } ;
struct TYPE_4__ {int bandwidth_hz; } ;
struct TYPE_5__ {TYPE_1__ dtv_property_cache; } ;


 int dib0090_write_reg (struct dib0090_state*,int,int) ;

__attribute__((used)) static void dib0090_set_bandwidth(struct dib0090_state *state)
{
 u16 tmp;

 if (state->fe->dtv_property_cache.bandwidth_hz / 1000 <= 5000)
  tmp = (3 << 14);
 else if (state->fe->dtv_property_cache.bandwidth_hz / 1000 <= 6000)
  tmp = (2 << 14);
 else if (state->fe->dtv_property_cache.bandwidth_hz / 1000 <= 7000)
  tmp = (1 << 14);
 else
  tmp = (0 << 14);

 state->bb_1_def &= 0x3fff;
 state->bb_1_def |= tmp;

 dib0090_write_reg(state, 0x01, state->bb_1_def);

 dib0090_write_reg(state, 0x03, 0x6008);
 dib0090_write_reg(state, 0x04, 0x1);
 if (state->identity.in_soc) {
  dib0090_write_reg(state, 0x05, 0x9bcf);
 } else {
  dib0090_write_reg(state, 0x02, (5 << 11) | (8 << 6) | (22 & 0x3f));
  dib0090_write_reg(state, 0x05, 0xabcd);
 }
}
