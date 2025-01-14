
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ cell_num; int page_num; TYPE_1__* table; } ;
struct TYPE_5__ {int pager; } ;
typedef int Row ;
typedef TYPE_2__ Cursor ;


 int LEAF_NODE_CELL_SIZE ;
 scalar_t__ LEAF_NODE_MAX_CELLS ;
 void* get_page (int ,int ) ;
 int leaf_node_cell (void*,scalar_t__) ;
 scalar_t__* leaf_node_key (void*,scalar_t__) ;
 int* leaf_node_num_cells (void*) ;
 int leaf_node_split_and_insert (TYPE_2__*,scalar_t__,int *) ;
 int leaf_node_value (void*,scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 int serialize_row (int *,int ) ;

void leaf_node_insert(Cursor* cursor, uint32_t key, Row* value) {
  void* node = get_page(cursor->table->pager, cursor->page_num);

  uint32_t num_cells = *leaf_node_num_cells(node);
  if (num_cells >= LEAF_NODE_MAX_CELLS) {

    leaf_node_split_and_insert(cursor, key, value);
    return;
  }

  if (cursor->cell_num < num_cells) {

    for (uint32_t i = num_cells; i > cursor->cell_num; i--) {
      memcpy(leaf_node_cell(node, i), leaf_node_cell(node, i - 1),
             LEAF_NODE_CELL_SIZE);
    }
  }

  *(leaf_node_num_cells(node)) += 1;
  *(leaf_node_key(node, cursor->cell_num)) = key;
  serialize_row(value, leaf_node_value(node, cursor->cell_num));
}
