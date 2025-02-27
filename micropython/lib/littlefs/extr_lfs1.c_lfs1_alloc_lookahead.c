
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int off; int size; unsigned int* buffer; } ;
struct TYPE_6__ {TYPE_2__ free; TYPE_1__* cfg; } ;
typedef TYPE_3__ lfs1_t ;
typedef int lfs1_block_t ;
struct TYPE_4__ {int block_count; } ;



__attribute__((used)) static int lfs1_alloc_lookahead(void *p, lfs1_block_t block) {
    lfs1_t *lfs1 = p;

    lfs1_block_t off = ((block - lfs1->free.off)
            + lfs1->cfg->block_count) % lfs1->cfg->block_count;

    if (off < lfs1->free.size) {
        lfs1->free.buffer[off / 32] |= 1U << (off % 32);
    }

    return 0;
}
