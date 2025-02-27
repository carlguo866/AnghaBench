
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_balance {scalar_t__ pos_in_item; int* insert_size; int* sbytes; int zeroes_num; TYPE_1__* tb_sb; struct buffer_head** S_new; int * snum; int item_pos; int tb_path; } ;
struct item_head {int dummy; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_blocksize_bits; } ;


 int LEAF_FROM_S_TO_SNEW ;
 struct buffer_head* PATH_PLAST_BUFFER (int ) ;
 int RFALSE (int,char*) ;
 int UNFM_P_SHIFT ;
 int add_le_ih_k_offset (struct item_head*,int) ;
 int balance_leaf_new_nodes_paste_dirent (struct tree_balance*,struct item_head* const,char const* const,struct item_head*,struct buffer_head**,int) ;
 int buffer_info_init_bh (struct tree_balance*,struct buffer_info*,struct buffer_head*) ;
 scalar_t__ ih_item_len (struct item_head*) ;
 scalar_t__ is_direntry_le_ih (struct item_head*) ;
 scalar_t__ is_indirect_le_ih (struct item_head*) ;
 struct item_head* item_head (struct buffer_head*,int ) ;
 int leaf_move_items (int ,struct tree_balance*,int ,int,struct buffer_head*) ;
 int leaf_paste_in_buffer (struct buffer_info*,int ,int,int,char const*,int) ;
 int set_ih_free_space (struct item_head*,int ) ;

__attribute__((used)) static void balance_leaf_new_nodes_paste_shift(struct tree_balance *tb,
      struct item_head * const ih,
      const char * const body,
      struct item_head *insert_key,
      struct buffer_head **insert_ptr,
      int i)
{
 struct buffer_head *tbS0 = PATH_PLAST_BUFFER(tb->tb_path);
 struct item_head *aux_ih = item_head(tbS0, tb->item_pos);
 int n_shift, n_rem, r_zeroes_number, shift;
 const char *r_body;
 struct item_head *tmp;
 struct buffer_info bi;

 RFALSE(ih, "PAP-12210: ih must be 0");

 if (is_direntry_le_ih(aux_ih)) {
  balance_leaf_new_nodes_paste_dirent(tb, ih, body, insert_key,
          insert_ptr, i);
  return;
 }




 RFALSE(tb->pos_in_item != ih_item_len(item_head(tbS0, tb->item_pos)) ||
        tb->insert_size[0] <= 0,
        "PAP-12225: item too short or insert_size <= 0");




 n_shift = tb->sbytes[i] - tb->insert_size[0];
 if (n_shift < 0)
  n_shift = 0;
 leaf_move_items(LEAF_FROM_S_TO_SNEW, tb, tb->snum[i], n_shift,
   tb->S_new[i]);





 n_rem = tb->insert_size[0] - tb->sbytes[i];
 if (n_rem < 0)
  n_rem = 0;


 buffer_info_init_bh(tb, &bi, tb->S_new[i]);
 if (n_rem > tb->zeroes_num) {
  r_zeroes_number = 0;
  r_body = body + n_rem - tb->zeroes_num;
 } else {
  r_body = body;
  r_zeroes_number = tb->zeroes_num - n_rem;
  tb->zeroes_num -= r_zeroes_number;
 }

 leaf_paste_in_buffer(&bi, 0, n_shift, tb->insert_size[0] - n_rem,
        r_body, r_zeroes_number);

 tmp = item_head(tb->S_new[i], 0);
 shift = 0;
 if (is_indirect_le_ih(tmp)) {
  set_ih_free_space(tmp, 0);
  shift = tb->tb_sb->s_blocksize_bits - UNFM_P_SHIFT;
 }
 add_le_ih_k_offset(tmp, n_rem << shift);

 tb->insert_size[0] = n_rem;
 if (!n_rem)
  tb->pos_in_item++;
}
