
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct drxk_state {int dummy; } ;


 int EIO ;
 int I2C_M_RD ;
 int debug ;
 int dprintk (int,char*) ;
 int drxk_i2c_transfer (struct drxk_state*,struct i2c_msg*,int) ;
 int pr_cont (char*,...) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int i2c_read(struct drxk_state *state,
      u8 adr, u8 *msg, int len, u8 *answ, int alen)
{
 int status;
 struct i2c_msg msgs[2] = {
  {.addr = adr, .flags = 0,
        .buf = msg, .len = len},
  {.addr = adr, .flags = I2C_M_RD,
   .buf = answ, .len = alen}
 };

 status = drxk_i2c_transfer(state, msgs, 2);
 if (status != 2) {
  if (debug > 2)
   pr_cont(": ERROR!\n");
  if (status >= 0)
   status = -EIO;

  pr_err("i2c read error at addr 0x%02x\n", adr);
  return status;
 }
 if (debug > 2) {
  int i;
  dprintk(2, ": read from");
  for (i = 0; i < len; i++)
   pr_cont(" %02x", msg[i]);
  pr_cont(", value = ");
  for (i = 0; i < alen; i++)
   pr_cont(" %02x", answ[i]);
  pr_cont("\n");
 }
 return 0;
}
