
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tda10023_state {int i2c; TYPE_1__* config; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int printk (char*) ;

__attribute__((used)) static int lock_tuner(struct tda10023_state* state)
{
 u8 buf[2] = { 0x0f, 0xc0 };
 struct i2c_msg msg = {.addr=state->config->demod_address, .flags=0, .buf=buf, .len=2};

 if(i2c_transfer(state->i2c, &msg, 1) != 1)
 {
  printk("tda10023: lock tuner fails\n");
  return -EREMOTEIO;
 }
 return 0;
}
