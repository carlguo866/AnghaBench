
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Buf; } ;
typedef TYPE_1__ BLOCK ;


 int Free (TYPE_1__*) ;

void FreeBlock(BLOCK *b)
{

 if (b == ((void*)0))
 {
  return;
 }

 Free(b->Buf);
 Free(b);
}
