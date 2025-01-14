
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tts_flags; int tts_tid; scalar_t__ tts_nvalid; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_9__ {int t_self; } ;
struct TYPE_8__ {scalar_t__ off; TYPE_3__* tuple; } ;
typedef TYPE_2__ HeapTupleTableSlot ;
typedef TYPE_3__* HeapTuple ;


 int TTS_FLAG_EMPTY ;
 int TTS_FLAG_SHOULDFREE ;
 int tts_heap_clear (TYPE_1__*) ;

__attribute__((used)) static void
tts_heap_store_tuple(TupleTableSlot *slot, HeapTuple tuple, bool shouldFree)
{
 HeapTupleTableSlot *hslot = (HeapTupleTableSlot *) slot;

 tts_heap_clear(slot);

 slot->tts_nvalid = 0;
 hslot->tuple = tuple;
 hslot->off = 0;
 slot->tts_flags &= ~(TTS_FLAG_EMPTY | TTS_FLAG_SHOULDFREE);
 slot->tts_tid = tuple->t_self;

 if (shouldFree)
  slot->tts_flags |= TTS_FLAG_SHOULDFREE;
}
