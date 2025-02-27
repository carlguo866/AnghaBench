
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint8_t ;
struct efi_md {size_t md_type; int md_pages; int md_attr; int md_phys; int md_virt; } ;
struct efi_map_header {int descriptor_size; int memory_size; } ;


 int EFI_MD_ATTR_MORE_RELIABLE ;
 int EFI_MD_ATTR_NV ;
 int EFI_MD_ATTR_RO ;
 int EFI_MD_ATTR_RP ;
 int EFI_MD_ATTR_RT ;
 int EFI_MD_ATTR_UC ;
 int EFI_MD_ATTR_UCE ;
 int EFI_MD_ATTR_WB ;
 int EFI_MD_ATTR_WC ;
 int EFI_MD_ATTR_WP ;
 int EFI_MD_ATTR_WT ;
 int EFI_MD_ATTR_XP ;





 int PAGE_SIZE ;
 int RB_VERBOSE ;
 int add_physmap_entry (int ,int,int *,int*) ;
 int boothowto ;
 struct efi_md* efi_next_descriptor (struct efi_md*,int) ;
 size_t nitems (char const**) ;
 int printf (char*,...) ;

__attribute__((used)) static void
add_efi_map_entries(struct efi_map_header *efihdr, vm_paddr_t *physmap,
    int *physmap_idx)
{
 struct efi_md *map, *p;
 const char *type;
 size_t efisz;
 int ndesc, i;

 static const char *types[] = {
  "Reserved",
  "LoaderCode",
  "LoaderData",
  "BootServicesCode",
  "BootServicesData",
  "RuntimeServicesCode",
  "RuntimeServicesData",
  "ConventionalMemory",
  "UnusableMemory",
  "ACPIReclaimMemory",
  "ACPIMemoryNVS",
  "MemoryMappedIO",
  "MemoryMappedIOPortSpace",
  "PalCode",
  "PersistentMemory"
 };





 efisz = (sizeof(struct efi_map_header) + 0xf) & ~0xf;
 map = (struct efi_md *)((uint8_t *)efihdr + efisz);

 if (efihdr->descriptor_size == 0)
  return;
 ndesc = efihdr->memory_size / efihdr->descriptor_size;

 if (boothowto & RB_VERBOSE)
  printf("%23s %12s %12s %8s %4s\n",
      "Type", "Physical", "Virtual", "#Pages", "Attr");

 for (i = 0, p = map; i < ndesc; i++,
     p = efi_next_descriptor(p, efihdr->descriptor_size)) {
  if (boothowto & RB_VERBOSE) {
   if (p->md_type < nitems(types))
    type = types[p->md_type];
   else
    type = "<INVALID>";
   printf("%23s %012lx %12p %08lx ", type, p->md_phys,
       p->md_virt, p->md_pages);
   if (p->md_attr & EFI_MD_ATTR_UC)
    printf("UC ");
   if (p->md_attr & EFI_MD_ATTR_WC)
    printf("WC ");
   if (p->md_attr & EFI_MD_ATTR_WT)
    printf("WT ");
   if (p->md_attr & EFI_MD_ATTR_WB)
    printf("WB ");
   if (p->md_attr & EFI_MD_ATTR_UCE)
    printf("UCE ");
   if (p->md_attr & EFI_MD_ATTR_WP)
    printf("WP ");
   if (p->md_attr & EFI_MD_ATTR_RP)
    printf("RP ");
   if (p->md_attr & EFI_MD_ATTR_XP)
    printf("XP ");
   if (p->md_attr & EFI_MD_ATTR_NV)
    printf("NV ");
   if (p->md_attr & EFI_MD_ATTR_MORE_RELIABLE)
    printf("MORE_RELIABLE ");
   if (p->md_attr & EFI_MD_ATTR_RO)
    printf("RO ");
   if (p->md_attr & EFI_MD_ATTR_RT)
    printf("RUNTIME");
   printf("\n");
  }

  switch (p->md_type) {
  case 130:
  case 129:
  case 132:
  case 131:
  case 128:



   break;
  default:
   continue;
  }

  if (!add_physmap_entry(p->md_phys, (p->md_pages * PAGE_SIZE),
      physmap, physmap_idx))
   break;
 }
}
