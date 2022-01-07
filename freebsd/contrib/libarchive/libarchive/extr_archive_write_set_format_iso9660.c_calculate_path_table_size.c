
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdd {int max_depth; int path_table_size; int path_table_block; struct path_table* pathtbl; } ;
struct path_table {int cnt; struct isoent** sorted; } ;
struct isoent {int id_len; int * identifier; } ;


 int LOGICAL_BLOCK_SIZE ;
 int PATH_TABLE_BLOCK_SIZE ;

__attribute__((used)) static void
calculate_path_table_size(struct vdd *vdd)
{
 int depth, size;
 struct path_table *pt;

 pt = vdd->pathtbl;
 size = 0;
 for (depth = 0; depth < vdd->max_depth; depth++) {
  struct isoent **ptbl;
  int i, cnt;

  if ((cnt = pt[depth].cnt) == 0)
   break;

  ptbl = pt[depth].sorted;
  for (i = 0; i < cnt; i++) {
   int len;

   if (ptbl[i]->identifier == ((void*)0))
    len = 1;
   else
    len = ptbl[i]->id_len;
   if (len & 0x01)
    len++;
   size += 8 + len;
  }
 }
 vdd->path_table_size = size;
 vdd->path_table_block =
     ((size + PATH_TABLE_BLOCK_SIZE -1) /
     PATH_TABLE_BLOCK_SIZE) *
     (PATH_TABLE_BLOCK_SIZE / LOGICAL_BLOCK_SIZE);
}
