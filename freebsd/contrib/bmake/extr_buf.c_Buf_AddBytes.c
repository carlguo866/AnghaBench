
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int size; scalar_t__* buffer; } ;
typedef scalar_t__ Byte ;
typedef TYPE_1__ Buffer ;


 scalar_t__ __predict_false (int) ;
 scalar_t__* bmake_realloc (scalar_t__*,int) ;
 scalar_t__ max (int,int) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;

void
Buf_AddBytes(Buffer *bp, int numBytes, const Byte *bytesPtr)
{
    int count = bp->count;
    Byte *ptr;

    if (__predict_false(count + numBytes >= bp->size)) {
 bp->size += max(bp->size, numBytes + 16);
 bp->buffer = bmake_realloc(bp->buffer, bp->size);
    }

    ptr = bp->buffer + count;
    bp->count = count + numBytes;
    ptr[numBytes] = 0;
    memcpy(ptr, bytesPtr, numBytes);
}
