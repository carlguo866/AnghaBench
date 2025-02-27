
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int off; int size; unsigned int* buffer; } ;
struct TYPE_6__ {TYPE_2__ free; TYPE_1__* cfg; } ;
typedef TYPE_3__ lfs2_t ;
typedef int lfs2_block_t ;
struct TYPE_4__ {int block_count; } ;



__attribute__((used)) static int lfs2_alloc_lookahead(void *p, lfs2_block_t block) {
    lfs2_t *lfs2 = (lfs2_t*)p;
    lfs2_block_t off = ((block - lfs2->free.off)
            + lfs2->cfg->block_count) % lfs2->cfg->block_count;

    if (off < lfs2->free.size) {
        lfs2->free.buffer[off / 32] |= 1U << (off % 32);
    }

    return 0;
}
