
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_address_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int * pmap_tt3e (int ,int ) ;

__attribute__((used)) static inline pt_entry_t *
pmap_pte(
  pmap_t pmap,
  vm_map_address_t addr)
{
 return(pmap_tt3e(pmap, addr));
}
