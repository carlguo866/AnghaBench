
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_3__ {int tupdescarr; } ;
typedef TYPE_1__* ResourceOwner ;


 int PointerGetDatum (int ) ;
 int ResourceArrayAdd (int *,int ) ;

void
ResourceOwnerRememberTupleDesc(ResourceOwner owner, TupleDesc tupdesc)
{
 ResourceArrayAdd(&(owner->tupdescarr), PointerGetDatum(tupdesc));
}
