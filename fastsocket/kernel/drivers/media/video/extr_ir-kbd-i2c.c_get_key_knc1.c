
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct IR_i2c {int c; } ;


 int EIO ;
 int dprintk (int,char*,...) ;
 int i2c_master_recv (int ,unsigned char*,int) ;

__attribute__((used)) static int get_key_knc1(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 unsigned char b;


 if (1 != i2c_master_recv(ir->c, &b, 1)) {
  dprintk(1,"read error\n");
  return -EIO;
 }





 dprintk(2,"key %02x\n", b);

 if (b == 0xff)
  return 0;

 if (b == 0xfe)

  return 1;

 *ir_key = b;
 *ir_raw = b;
 return 1;
}
