
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_translate {int * funcs; } ;


 int funcs ;

void dal_hw_translate_dce80_init(
 struct hw_translate *translate)
{
 translate->funcs = &funcs;
}
