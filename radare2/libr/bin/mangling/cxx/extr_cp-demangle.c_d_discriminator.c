
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_info {int dummy; } ;


 int d_advance (struct d_info*,int) ;
 int d_number (struct d_info*) ;
 char d_peek_char (struct d_info*) ;

__attribute__((used)) static int
d_discriminator (struct d_info *di)
{
  int discrim, num_underscores = 1;

  if (d_peek_char (di) != '_')
    return 1;
  d_advance (di, 1);
  if (d_peek_char (di) == '_')
    {
      ++num_underscores;
      d_advance (di, 1);
    }

  discrim = d_number (di);
  if (discrim < 0)
    return 0;
  if (num_underscores > 1 && discrim >= 10)
    {
      if (d_peek_char (di) == '_')
 d_advance (di, 1);
      else
 return 0;
    }

  return 1;
}
