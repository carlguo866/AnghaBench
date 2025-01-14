
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* sst_next; } ;
typedef TYPE_2__ synstate_T ;
struct TYPE_9__ {long b_sst_len; int b_sst_freecount; TYPE_2__* b_sst_array; TYPE_2__* b_sst_firstfree; TYPE_2__* b_sst_first; } ;
struct TYPE_6__ {int ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;


 int Rows ;
 int SST_DIST ;
 long SST_MAX_ENTRIES ;
 long SST_MIN_ENTRIES ;
 scalar_t__ alloc_clear (unsigned int) ;
 TYPE_5__* syn_block ;
 TYPE_4__* syn_buf ;
 scalar_t__ syn_stack_cleanup () ;
 int vim_free (TYPE_2__*) ;

__attribute__((used)) static void
syn_stack_alloc()
{
    long len;
    synstate_T *to, *from;
    synstate_T *sstp;

    len = syn_buf->b_ml.ml_line_count / SST_DIST + Rows * 2;
    if (len < SST_MIN_ENTRIES)
 len = SST_MIN_ENTRIES;
    else if (len > SST_MAX_ENTRIES)
 len = SST_MAX_ENTRIES;
    if (syn_block->b_sst_len > len * 2 || syn_block->b_sst_len < len)
    {

 len = syn_buf->b_ml.ml_line_count;
 len = (len + len / 2) / SST_DIST + Rows * 2;
 if (len < SST_MIN_ENTRIES)
     len = SST_MIN_ENTRIES;
 else if (len > SST_MAX_ENTRIES)
     len = SST_MAX_ENTRIES;

 if (syn_block->b_sst_array != ((void*)0))
 {


     while (syn_block->b_sst_len - syn_block->b_sst_freecount + 2 > len
      && syn_stack_cleanup())
  ;
     if (len < syn_block->b_sst_len - syn_block->b_sst_freecount + 2)
  len = syn_block->b_sst_len - syn_block->b_sst_freecount + 2;
 }

 sstp = (synstate_T *)alloc_clear((unsigned)(len * sizeof(synstate_T)));
 if (sstp == ((void*)0))
     return;

 to = sstp - 1;
 if (syn_block->b_sst_array != ((void*)0))
 {

     for (from = syn_block->b_sst_first; from != ((void*)0);
       from = from->sst_next)
     {
  ++to;
  *to = *from;
  to->sst_next = to + 1;
     }
 }
 if (to != sstp - 1)
 {
     to->sst_next = ((void*)0);
     syn_block->b_sst_first = sstp;
     syn_block->b_sst_freecount = len - (int)(to - sstp) - 1;
 }
 else
 {
     syn_block->b_sst_first = ((void*)0);
     syn_block->b_sst_freecount = len;
 }


 syn_block->b_sst_firstfree = to + 1;
 while (++to < sstp + len)
     to->sst_next = to + 1;
 (sstp + len - 1)->sst_next = ((void*)0);

 vim_free(syn_block->b_sst_array);
 syn_block->b_sst_array = sstp;
 syn_block->b_sst_len = len;
    }
}
