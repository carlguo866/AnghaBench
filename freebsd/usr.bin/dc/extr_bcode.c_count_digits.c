
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct number {int scale; int number; } ;


 int BN_div_word (int ,int) ;
 scalar_t__ BN_is_zero (int ) ;
 int free_number (struct number*) ;
 struct number* new_number () ;
 int split_number (struct number const*,int ,int ) ;

__attribute__((used)) static u_int
count_digits(const struct number *n)
{
 struct number *int_part, *fract_part;
 u_int i;

 if (BN_is_zero(n->number))
  return n->scale ? n->scale : 1;

 int_part = new_number();
 fract_part = new_number();
 fract_part->scale = n->scale;
 split_number(n, int_part->number, fract_part->number);

 i = 0;
 while (!BN_is_zero(int_part->number)) {
  BN_div_word(int_part->number, 10);
  i++;
 }
 free_number(int_part);
 free_number(fract_part);
 return (i + n->scale);
}
