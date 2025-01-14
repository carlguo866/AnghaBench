
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int vd_next; int vd_aux; int vd_hash; int vd_cnt; int vd_ndx; int vd_flags; int vd_version; } ;
struct TYPE_5__ {void* vd_next; void* vd_aux; void* vd_hash; void* vd_cnt; void* vd_ndx; void* vd_flags; void* vd_version; } ;
typedef TYPE_1__ Elf_Internal_Verdef ;
typedef TYPE_2__ Elf_External_Verdef ;


 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;

void
_bfd_elf_swap_verdef_in (bfd *abfd,
    const Elf_External_Verdef *src,
    Elf_Internal_Verdef *dst)
{
  dst->vd_version = H_GET_16 (abfd, src->vd_version);
  dst->vd_flags = H_GET_16 (abfd, src->vd_flags);
  dst->vd_ndx = H_GET_16 (abfd, src->vd_ndx);
  dst->vd_cnt = H_GET_16 (abfd, src->vd_cnt);
  dst->vd_hash = H_GET_32 (abfd, src->vd_hash);
  dst->vd_aux = H_GET_32 (abfd, src->vd_aux);
  dst->vd_next = H_GET_32 (abfd, src->vd_next);
}
