
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_11__ {TYPE_1__* PacketData; } ;
struct TYPE_10__ {int * IpWaitList; } ;
struct TYPE_9__ {scalar_t__ Expire; TYPE_6__* Packet; } ;
typedef int LIST ;
typedef TYPE_1__ L3PACKET ;
typedef TYPE_2__ L3IF ;


 int Delete (int *,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int FreePacket (TYPE_6__*) ;
 int Insert (int *,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;

void L3DeleteOldIpWaitList(L3IF *f)
{
 UINT i;
 LIST *o = ((void*)0);

 if (f == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(f->IpWaitList);i++)
 {
  L3PACKET *p = LIST_DATA(f->IpWaitList, i);

  if (p->Expire <= Tick64())
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }

   Insert(o, p);
  }
 }

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   L3PACKET *p = LIST_DATA(o, i);

   Delete(f->IpWaitList, p);

   Free(p->Packet->PacketData);
   FreePacket(p->Packet);
   Free(p);
  }

  ReleaseList(o);
 }
}
