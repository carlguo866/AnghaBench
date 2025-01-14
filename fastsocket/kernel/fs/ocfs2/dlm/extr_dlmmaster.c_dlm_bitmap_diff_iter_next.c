
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_bitmap_diff_iter {int curnode; int orig_bm; int diff_bm; } ;
typedef enum dlm_node_state_change { ____Placeholder_dlm_node_state_change } dlm_node_state_change ;


 int ENOENT ;
 int NODE_DOWN ;
 int NODE_UP ;
 int O2NM_MAX_NODES ;
 int find_next_bit (int ,int,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int dlm_bitmap_diff_iter_next(struct dlm_bitmap_diff_iter *iter,
         enum dlm_node_state_change *state)
{
 int bit;

 if (iter->curnode >= O2NM_MAX_NODES)
  return -ENOENT;

 bit = find_next_bit(iter->diff_bm, O2NM_MAX_NODES,
       iter->curnode+1);
 if (bit >= O2NM_MAX_NODES) {
  iter->curnode = O2NM_MAX_NODES;
  return -ENOENT;
 }


 if (test_bit(bit, iter->orig_bm))
  *state = NODE_DOWN;
 else
  *state = NODE_UP;

 iter->curnode = bit;
 return bit;
}
