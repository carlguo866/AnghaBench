
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int tag; int user; struct TYPE_3__* next; struct TYPE_3__* prev; } ;
typedef TYPE_1__ memblock_t ;
typedef int byte ;
struct TYPE_4__ {int size; TYPE_1__ blocklist; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 TYPE_2__* mainzone ;

void Z_FileDumpHeap (FILE* f)
{
    memblock_t* block;

    fprintf (f,"zone size: %i  location: %p\n",mainzone->size,mainzone);

    for (block = mainzone->blocklist.next ; ; block = block->next)
    {
 fprintf (f,"block:%p    size:%7i    user:%p    tag:%3i\n",
   block, block->size, block->user, block->tag);

 if (block->next == &mainzone->blocklist)
 {

     break;
 }

 if ( (byte *)block + block->size != (byte *)block->next)
     fprintf (f,"ERROR: block size does not touch the next block\n");

 if ( block->next->prev != block)
     fprintf (f,"ERROR: next block doesn't have proper back link\n");

 if (!block->user && !block->next->user)
     fprintf (f,"ERROR: two consecutive free blocks\n");
    }
}
