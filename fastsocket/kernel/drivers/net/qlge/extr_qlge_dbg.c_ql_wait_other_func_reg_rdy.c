
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int mdelay (int) ;
 int ql_read_other_func_reg (struct ql_adapter*,int) ;

__attribute__((used)) static int ql_wait_other_func_reg_rdy(struct ql_adapter *qdev, u32 reg,
     u32 bit, u32 err_bit)
{
 u32 temp;
 int count = 10;

 while (count) {
  temp = ql_read_other_func_reg(qdev, reg);


  if (temp & err_bit)
   return -1;
  else if (temp & bit)
   return 0;
  mdelay(10);
  count--;
 }
 return -1;
}
