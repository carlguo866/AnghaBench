
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef int bfd_vma ;
struct TYPE_4__ {TYPE_1__* tls_sec; } ;
struct TYPE_3__ {int vma; } ;


 TYPE_2__* elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_vma
dtpoff_base (struct bfd_link_info *info)
{

  if (elf_hash_table (info)->tls_sec == ((void*)0))
    return 0;
  return elf_hash_table (info)->tls_sec->vma;
}
