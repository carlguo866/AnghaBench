
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3306a_state {int dummy; } ;


 int dbg_info (char*,int,int,int,int) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;
 int lgdt3306a_write_reg (struct lgdt3306a_state*,int,int) ;

__attribute__((used)) static int lgdt3306a_pre_monitoring(struct lgdt3306a_state *state)
{
 u8 val = 0;
 int ret;
 u8 currChDiffACQ, snrRef, mainStrong, aiccrejStatus;


 ret = lgdt3306a_read_reg(state, 0x21bc, &currChDiffACQ);
 if (ret)
  return ret;


 ret = lgdt3306a_read_reg(state, 0x21a1, &val);
 if (ret)
  return ret;
 snrRef = val & 0x3f;


 ret = lgdt3306a_read_reg(state, 0x2199, &val);
 if (ret)
  return ret;
 mainStrong = (val & 0x40) >> 6;

 ret = lgdt3306a_read_reg(state, 0x0090, &val);
 if (ret)
  return ret;
 aiccrejStatus = (val & 0xf0) >> 4;

 dbg_info("snrRef=%d mainStrong=%d aiccrejStatus=%d currChDiffACQ=0x%x\n",
  snrRef, mainStrong, aiccrejStatus, currChDiffACQ);





 if (mainStrong == 0) {
  ret = lgdt3306a_read_reg(state, 0x2135, &val);
  if (ret)
   return ret;
  val &= 0x0f;
  val |= 0xa0;
  ret = lgdt3306a_write_reg(state, 0x2135, val);
  if (ret)
   return ret;

  ret = lgdt3306a_read_reg(state, 0x2141, &val);
  if (ret)
   return ret;
  val &= 0x3f;
  val |= 0x80;
  ret = lgdt3306a_write_reg(state, 0x2141, val);
  if (ret)
   return ret;

  ret = lgdt3306a_write_reg(state, 0x2122, 0x70);
  if (ret)
   return ret;
 } else {
  ret = lgdt3306a_read_reg(state, 0x2135, &val);
  if (ret)
   return ret;
  val &= 0x0f;
  val |= 0x70;
  ret = lgdt3306a_write_reg(state, 0x2135, val);
  if (ret)
   return ret;

  ret = lgdt3306a_read_reg(state, 0x2141, &val);
  if (ret)
   return ret;
  val &= 0x3f;
  val |= 0x40;
  ret = lgdt3306a_write_reg(state, 0x2141, val);
  if (ret)
   return ret;

  ret = lgdt3306a_write_reg(state, 0x2122, 0x40);
  if (ret)
   return ret;
 }
 return 0;
}
