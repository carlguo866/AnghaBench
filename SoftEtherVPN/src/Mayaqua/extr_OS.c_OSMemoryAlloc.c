
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {void* (* MemoryAlloc ) (int ) ;} ;


 TYPE_1__* os ;
 void* stub1 (int ) ;

void *OSMemoryAlloc(UINT size)
{
 return os->MemoryAlloc(size);
}
