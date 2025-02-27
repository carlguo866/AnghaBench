
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jffs2_sb_info {int nr_blocks; TYPE_1__* blocks; } ;
struct jffs2_raw_node_ref {scalar_t__ flash_offset; struct jffs2_raw_node_ref* next_in_ino; } ;
struct TYPE_2__ {int * last_node; struct jffs2_raw_node_ref* first_node; } ;


 size_t REFS_PER_BLOCK ;
 scalar_t__ REF_LINK_NODE ;
 int jffs2_free_refblock (struct jffs2_raw_node_ref*) ;

void jffs2_free_raw_node_refs(struct jffs2_sb_info *c)
{
 int i;
 struct jffs2_raw_node_ref *this, *next;

 for (i=0; i<c->nr_blocks; i++) {
  this = c->blocks[i].first_node;
  while (this) {
   if (this[REFS_PER_BLOCK].flash_offset == REF_LINK_NODE)
    next = this[REFS_PER_BLOCK].next_in_ino;
   else
    next = ((void*)0);

   jffs2_free_refblock(this);
   this = next;
  }
  c->blocks[i].first_node = c->blocks[i].last_node = ((void*)0);
 }
}
