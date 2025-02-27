
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int off; int tuple; } ;
typedef TYPE_1__ HeapTupleTableSlot ;


 int Assert (int) ;
 int TTS_EMPTY (int *) ;
 int slot_deform_heap_tuple (int *,int ,int *,int) ;

__attribute__((used)) static void
tts_heap_getsomeattrs(TupleTableSlot *slot, int natts)
{
 HeapTupleTableSlot *hslot = (HeapTupleTableSlot *) slot;

 Assert(!TTS_EMPTY(slot));

 slot_deform_heap_tuple(slot, hslot->tuple, &hslot->off, natts);
}
