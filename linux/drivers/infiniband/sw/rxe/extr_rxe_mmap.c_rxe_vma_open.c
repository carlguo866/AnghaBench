
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct rxe_mmap_info* vm_private_data; } ;
struct rxe_mmap_info {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void rxe_vma_open(struct vm_area_struct *vma)
{
 struct rxe_mmap_info *ip = vma->vm_private_data;

 kref_get(&ip->ref);
}
