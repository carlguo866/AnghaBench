
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct i2c_msg {int dummy; } ;
struct TYPE_4__ {int addr; int adap; } ;
struct dib8000_state {int* i2c_write_buffer; int* i2c_read_buffer; TYPE_2__* msg; TYPE_1__ i2c; } ;
struct TYPE_5__ {int addr; int* buf; int len; scalar_t__ flags; } ;


 scalar_t__ I2C_M_RD ;
 int dprintk (char*,int) ;
 int i2c_transfer (int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static u16 __dib8000_read_word(struct dib8000_state *state, u16 reg)
{
 u16 ret;

 state->i2c_write_buffer[0] = reg >> 8;
 state->i2c_write_buffer[1] = reg & 0xff;

 memset(state->msg, 0, 2 * sizeof(struct i2c_msg));
 state->msg[0].addr = state->i2c.addr >> 1;
 state->msg[0].flags = 0;
 state->msg[0].buf = state->i2c_write_buffer;
 state->msg[0].len = 2;
 state->msg[1].addr = state->i2c.addr >> 1;
 state->msg[1].flags = I2C_M_RD;
 state->msg[1].buf = state->i2c_read_buffer;
 state->msg[1].len = 2;

 if (i2c_transfer(state->i2c.adap, state->msg, 2) != 2)
  dprintk("i2c read error on %d\n", reg);

 ret = (state->i2c_read_buffer[0] << 8) | state->i2c_read_buffer[1];

 return ret;
}
