
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct jffs2_node_frag {struct jffs2_full_dnode* node; void* size; void* ofs; } ;
struct jffs2_full_dnode {int dummy; } ;


 int JFFS2_ERROR (char*) ;
 struct jffs2_node_frag* jffs2_alloc_node_frag () ;
 scalar_t__ likely (struct jffs2_node_frag*) ;

__attribute__((used)) static struct jffs2_node_frag * new_fragment(struct jffs2_full_dnode *fn, uint32_t ofs, uint32_t size)
{
 struct jffs2_node_frag *newfrag;

 newfrag = jffs2_alloc_node_frag();
 if (likely(newfrag)) {
  newfrag->ofs = ofs;
  newfrag->size = size;
  newfrag->node = fn;
 } else {
  JFFS2_ERROR("cannot allocate a jffs2_node_frag object\n");
 }

 return newfrag;
}
