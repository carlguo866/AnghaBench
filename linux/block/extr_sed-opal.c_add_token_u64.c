
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct opal_dev {int dummy; } ;


 size_t DIV_ROUND_UP (int,int) ;
 size_t TINY_ATOM_DATA_MASK ;
 int add_short_atom_header (struct opal_dev*,int,int,size_t) ;
 int add_token_u8 (int*,struct opal_dev*,size_t) ;
 int can_add (int*,struct opal_dev*,size_t) ;
 int fls64 (size_t) ;
 int pr_debug (char*) ;

__attribute__((used)) static void add_token_u64(int *err, struct opal_dev *cmd, u64 number)
{
 size_t len;
 int msb;

 if (!(number & ~TINY_ATOM_DATA_MASK)) {
  add_token_u8(err, cmd, number);
  return;
 }

 msb = fls64(number);
 len = DIV_ROUND_UP(msb, 8);

 if (!can_add(err, cmd, len + 1)) {
  pr_debug("Error adding u64: end of buffer.\n");
  return;
 }
 add_short_atom_header(cmd, 0, 0, len);
 while (len--)
  add_token_u8(err, cmd, number >> (len * 8));
}
