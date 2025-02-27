
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* nodes; } ;
typedef TYPE_1__ opj_tgt_tree_t ;
struct TYPE_5__ {scalar_t__ low; scalar_t__ value; struct TYPE_5__* parent; } ;
typedef TYPE_2__ opj_tgt_node_t ;
typedef int opj_bio_t ;
typedef size_t OPJ_UINT32 ;
typedef scalar_t__ OPJ_INT32 ;


 scalar_t__ opj_bio_read (int *,int) ;

OPJ_UINT32 opj_tgt_decode(opj_bio_t *bio, opj_tgt_tree_t *tree,
                          OPJ_UINT32 leafno, OPJ_INT32 threshold)
{
    opj_tgt_node_t *stk[31];
    opj_tgt_node_t **stkptr;
    opj_tgt_node_t *node;
    OPJ_INT32 low;

    stkptr = stk;
    node = &tree->nodes[leafno];
    while (node->parent) {
        *stkptr++ = node;
        node = node->parent;
    }

    low = 0;
    for (;;) {
        if (low > node->low) {
            node->low = low;
        } else {
            low = node->low;
        }
        while (low < threshold && low < node->value) {
            if (opj_bio_read(bio, 1)) {
                node->value = low;
            } else {
                ++low;
            }
        }
        node->low = low;
        if (stkptr == stk) {
            break;
        }
        node = *--stkptr;
    }

    return (node->value < threshold) ? 1 : 0;
}
