
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vmstate {scalar_t__ dmphdrsz; TYPE_1__* eh; TYPE_3__* ph; } ;
typedef scalar_t__ off_t ;
struct TYPE_6__ {struct vmstate* vmst; } ;
typedef TYPE_2__ kvm_t ;
typedef scalar_t__ kvaddr_t ;
struct TYPE_7__ {int p_vaddr; int p_memsz; int p_offset; } ;
struct TYPE_5__ {int e_phentsize; int e_phnum; } ;
typedef TYPE_3__ Elf32_Phdr ;


 uintptr_t be16toh (int ) ;
 scalar_t__ be32toh (int ) ;

__attribute__((used)) static size_t
powerpc_va2off(kvm_t *kd, kvaddr_t va, off_t *ofs)
{
 struct vmstate *vm = kd->vmst;
 Elf32_Phdr *ph;
 int nph;

 ph = vm->ph;
 nph = be16toh(vm->eh->e_phnum);
 while (nph && (va < be32toh(ph->p_vaddr) ||
     va >= be32toh(ph->p_vaddr) + be32toh(ph->p_memsz))) {
  nph--;
  ph = (void *)((uintptr_t)ph + be16toh(vm->eh->e_phentsize));
 }
 if (nph == 0)
  return (0);


 *ofs = vm->dmphdrsz + be32toh(ph->p_offset) +
     (va - be32toh(ph->p_vaddr));
 return (be32toh(ph->p_memsz) - (va - be32toh(ph->p_vaddr)));
}
