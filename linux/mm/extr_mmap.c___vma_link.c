
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int dummy; } ;


 int __vma_link_list (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node*) ;
 int __vma_link_rb (struct mm_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ;

__attribute__((used)) static void
__vma_link(struct mm_struct *mm, struct vm_area_struct *vma,
 struct vm_area_struct *prev, struct rb_node **rb_link,
 struct rb_node *rb_parent)
{
 __vma_link_list(mm, vma, prev, rb_parent);
 __vma_link_rb(mm, vma, rb_link, rb_parent);
}
