
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long funcaddr; } ;
typedef TYPE_1__ func_desc_t ;



__attribute__((used)) static unsigned long stub_func_addr(func_desc_t func)
{
 return func.funcaddr;
}
