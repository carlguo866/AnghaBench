
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cs; } ;
typedef TYPE_1__ IPropDataImpl ;


 int EnterCriticalSection (int *) ;

__attribute__((used)) static inline void IMAPIPROP_Lock(IPropDataImpl *This)
{
    EnterCriticalSection(&This->cs);
}
