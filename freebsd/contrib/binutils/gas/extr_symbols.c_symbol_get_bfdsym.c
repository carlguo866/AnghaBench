
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * bsym; } ;
typedef TYPE_1__ symbolS ;
struct local_symbol {int dummy; } ;
typedef int asymbol ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 TYPE_1__* local_symbol_convert (struct local_symbol*) ;

asymbol *
symbol_get_bfdsym (symbolS *s)
{
  if (LOCAL_SYMBOL_CHECK (s))
    s = local_symbol_convert ((struct local_symbol *) s);
  return s->bsym;
}
