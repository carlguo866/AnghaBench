
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* zPType; } ;
struct TYPE_5__ {int flags; char eSubtype; void (* xDel ) (void*) ;void* z; TYPE_1__ u; } ;
typedef TYPE_2__ Mem ;


 int MEM_Dyn ;
 int MEM_Null ;
 int MEM_Subtype ;
 int MEM_Term ;
 int assert (int) ;
 void sqlite3NoopDestructor (void*) ;

void sqlite3VdbeMemSetPointer(
  Mem *pMem,
  void *pPtr,
  const char *zPType,
  void (*xDestructor)(void*)
){
  assert( pMem->flags==MEM_Null );
  pMem->u.zPType = zPType ? zPType : "";
  pMem->z = pPtr;
  pMem->flags = MEM_Null|MEM_Dyn|MEM_Subtype|MEM_Term;
  pMem->eSubtype = 'p';
  pMem->xDel = xDestructor ? xDestructor : sqlite3NoopDestructor;
}
