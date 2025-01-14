
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tda10021_state {int reg0; TYPE_1__* config; } ;
typedef enum fe_spectral_inversion { ____Placeholder_fe_spectral_inversion } fe_spectral_inversion ;
struct TYPE_2__ {scalar_t__ invert; } ;


 int INVERSION_ON ;
 int _tda10021_writereg (struct tda10021_state*,int,int) ;

__attribute__((used)) static int tda10021_setup_reg0(struct tda10021_state *state, u8 reg0,
          enum fe_spectral_inversion inversion)
{
 reg0 |= state->reg0 & 0x63;

 if ((INVERSION_ON == inversion) ^ (state->config->invert == 0))
  reg0 &= ~0x20;
 else
  reg0 |= 0x20;

 _tda10021_writereg (state, 0x00, reg0 & 0xfe);
 _tda10021_writereg (state, 0x00, reg0 | 0x01);

 state->reg0 = reg0;
 return 0;
}
