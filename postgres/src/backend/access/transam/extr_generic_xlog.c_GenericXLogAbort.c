
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GenericXLogState ;


 int pfree (int *) ;

void
GenericXLogAbort(GenericXLogState *state)
{
 pfree(state);
}
