
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_float ;


 int erf (int ) ;
 int mrb_float_value (int *,int ) ;
 int mrb_get_args (int *,char*,int *) ;

__attribute__((used)) static mrb_value
math_erf(mrb_state *mrb, mrb_value obj)
{
  mrb_float x;

  mrb_get_args(mrb, "f", &x);
  x = erf(x);

  return mrb_float_value(mrb, x);
}
